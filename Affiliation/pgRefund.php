		<?php
	header("Pragma: no-cache");
	header("Cache-Control: no-cache");
	header("Expires: 0");
require_once("./lib/config_paytm.php");
require_once("./lib/encdec_paytm.php");
 
	 
	$requestParamList = array();
	$responseParamList = array();
    $paytmParams = array();
 

	if (isset($_REQUEST["ORDER_ID"]) && $_REQUEST["ORDER_ID"] != "") {

		// In Test Page, we are taking parameters from POST request. In actual implementation these can be collected from session or DB. 
		$ORDER_ID = $_REQUEST["ORDER_ID"];

		// Create an array having all required parameters for status query.
		$requestParamList = array("MID" => PAYTM_MERCHANT_MID , "ORDERID" => $ORDER_ID);  
		
		$StatusCheckSum = getChecksumFromArray($requestParamList,PAYTM_MERCHANT_KEY);
		
		$requestParamList['CHECKSUMHASH'] = $StatusCheckSum;

		// Call the PG's getTxnStatusNew() function for verifying the transaction status.
		$responseParamList = getTxnStatusNew($requestParamList);
	}

 
		if (isset($responseParamList) && count($responseParamList)>0 )
		{ 
		?>
		<h2>Response of Refund  query:</h2>
		<table style="border: 1px solid nopadding" border="0">
			<tbody>
				<?php
					foreach($responseParamList as $paramName => $paramValue) {
					if($paramName=='MID'){
					 $paytmParams["MID"] = $paramValue;
					}
					if($paramName=='ORDERID'){
					 $paytmParams["ORDERID"] = $paramValue;
					}
					if($paramName=='TXNID'){
					 $paytmParams["TXNID"] = $paramValue;
					}
					if($paramName=='REFUNDAMT'){
					 $paytmParams["REFUNDAMOUNT"] = $paramValue;
					}
					 
					 
				?>
			<!--	<tr >
					<td style="border: 1px solid"><label><?php echo $paramName?></label></td>
					<td style="border: 1px solid"><?php echo $paramValue?></td>
				</tr>-->
				<?php
					 
					}
				?>
			</tbody>
		</table>
		<?php
		}
		 


  //  $merchantMid = "rxazcv89315285244163";
    $merchantKey = "@snMxmpRa0Y&mJSc";
    //$orderId = "order1";  
    //$refundAmount = "100.12";
    //$transactionId = "20180914111212800110168018200018021";
	
	
	 $refId = "PUREFUND" . rand(10000,99999999);
	 $transactionType = "REFUND";
	 
	  $paytmParams["REFID"] = $refId;
    $paytmParams["TXNTYPE"] = $transactionType;
	
	
    //$paytmParams["MID"] = $merchantMid;
   // $paytmParams["ORDERID"] = $orderId; 
   
   // $paytmParams["REFUNDAMOUNT"] = $refundAmount;
   // $paytmParams["TXNID"] = $transactionId;
	
	
	
    $paytmChecksum = getRefundChecksumFromArray($paytmParams, $merchantKey);
    $paytmParams["CHECKSUM"] = urlencode($paytmChecksum);
	
	
		header("Location:index.php");
	
    $postData = 'JsonData='.json_encode($paytmParams, JSON_UNESCAPED_SLASHES);
	//echo $postData;
    $connection = curl_init(); 
    // $transactionURL = "https://securegw.paytm.in/refund/HANDLER_INTERNAL/REFUND"; // for production
    $transactionURL = "https://securegw-stage.paytm.in/refund/HANDLER_INTERNAL/REFUND"; // for staging
    curl_setopt($connection, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($connection, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($connection, CURLOPT_URL, $transactionURL);
    curl_setopt($connection, CURLOPT_POST, true);
    curl_setopt($connection, CURLOPT_POSTFIELDS, $postData);
    curl_setopt($connection, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($connection, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    $responseReader = curl_exec($connection);
    $responseData = json_decode($responseReader, true);
    echo "<pre>"; print_r($responseData); echo "</pre>";
?>