<?php
header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");
session_start();
// following files need to be included
require_once("./lib/config_paytm.php");
require_once("./lib/encdec_paytm.php");
require_once("../lib/config.php");

$paytmChecksum = "";
$paramList = array();
$isValidChecksum = "FALSE";

$paramList = $_POST;
$paytmChecksum = isset($_POST["CHECKSUMHASH"]) ? $_POST["CHECKSUMHASH"] : ""; //Sent by Paytm pg

//Verify all parameters received from Paytm pg to your application. Like MID received from paytm pg is same as your application’s MID, TXN_AMOUNT and ORDER_ID are same as what was sent by you to Paytm PG for initiating transaction etc.
$isValidChecksum = verifychecksum_e($paramList, PAYTM_MERCHANT_KEY, $paytmChecksum); //will return TRUE or FALSE string.


if($isValidChecksum == "TRUE") {
	echo "<b>Checksum matched and following are the transaction details:</b>" . "<br/>";
	if ($_POST["STATUS"] == "TXN_SUCCESS") {
		echo "<b>Transaction status is success</b>" . "<br/>";
		
		//Process your transaction here as success transaction.
		//Verify amount & order id received from Payment gateway with your application's order id and amount.
		
$value1 =  $_POST["TXNID"];
$value2=  $_POST["BANKTXNID"];
$value3 =  $_POST["ORDERID"];
$value4 =  $_POST["TXNAMOUNT"];
$value5 =  $_POST["STATUS"];
$value6 =  isset($_POST["TXNTYPE"])?$_POST["TXNTYPE"]:"SALE";
$value7 =  $_POST["GATEWAYNAME"];
$value8 =  $_POST["RESPCODE"];
$value9 =  $_POST["RESPMSG"];
$value10 =  $_POST["BANKNAME"];
$value11 =  $_POST["MID"];
$value12 =  $_POST["PAYMENTMODE"];
$value13 =  isset($_POST["REFUNDAMT"])?$_POST["REFUNDAMT"]:"0.0";
$value14 =  $_POST["TXNDATE"];

$value15  = "";
$value16  = ""; 
$value17  = ""; 
$id= "";

if(isset($_REQUEST['clg'])){
$id= $_REQUEST['clg'];

}


	 
	$sql = "INSERT INTO `affliated_payment`(REGNO,TXNID,BANKTXNID,ORDERID,TXNAMOUNT,STATUS,TXNTYPE,GATEWAYNAME,RESPCODE,RESPMSG,BANKNAME,PAYMENTMODE,REFUNDAMT,TXNDATE,DEGL,DEGREE,Addi,MID) VALUES ('$id','$value1','$value2','$value3','$value4','$value5','$value6','$value7','$value8','$value9','$value10','$value12','$value13','$value14','$value15','$value16','$value17','$value11')";

 echo $sql;
			//	$con = mysqli_connect("localhost","root","","paytm");	
				if(mysqli_query($con,$sql))
				{
					
					echo "<h2>PAYMENT SUCCESSFULL</h2>";
					header("Location:https://etech.periyaruniversity.ac.in/AFFILIATION/Affiliation/index.php");
										
				} 
	}
	else {
		echo "<b>Transaction status is failure</b>" . "<br/>";
			//header("location:pgRefund.php?ORDER_ID = ".$_POST["ORDER_ID"]);
			header("location:https://etech.periyaruniversity.ac.in/AFFILIATION/Affiliation/index.php.php");
	}


	
}
else {
	echo "<b>Checksum mismatched.</b>";
	//Process transaction as suspicious.
}

?>