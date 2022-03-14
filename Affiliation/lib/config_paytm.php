<?php
/*
- Use PAYTM_ENVIRONMENT as 'PROD' if you wanted to do transaction in production environment else 'TEST' for doing transaction in testing environment.
- Change the value of PAYTM_MERCHANT_KEY constant with details received from Paytm.
- Change the value of PAYTM_MERCHANT_MID constant with details received from Paytm.
- Change the value of PAYTM_MERCHANT_WEBSITE constant with details received from Paytm.
- Above details will be different for testing and production environment.
*/

 
/* 
for Acount 1.
define('PAYTM_ENVIRONMENT', 'PROD'); // PROD
define('PAYTM_MERCHANT_KEY', '%doUmt4Y7S&3bqk_');			//@snMxmpRa0Y&mJSc'); //Change this constant's value with Merchant key received from Paytm.
define('PAYTM_MERCHANT_MID', 'Periya84601185085737');		//PEUNNB72538690355276'); //Change this constant's value with MID (Merchant ID) received from Paytm.
define('PAYTM_MERCHANT_WEBSITE', 'WEBPROD');

*/
// KEY 2
define('PAYTM_ENVIRONMENT', 'PROD'); // PROD
define('PAYTM_MERCHANT_KEY', 'F#t_Tycn01iUe@iz');			//@snMxmpRa0Y&mJSc'); //Change this constant's value with Merchant key received from Paytm.
define('PAYTM_MERCHANT_MID', 'Periya71653095213095');		//PEUNNB72538690355276'); //Change this constant's value with MID (Merchant ID) received from Paytm.
define('PAYTM_MERCHANT_WEBSITE', 'WEBPROD');

$PAYTM_STATUS_QUERY_NEW_URL='https://securegw-stage.paytm.in/merchant-status/getTxnStatus';
$PAYTM_TXN_URL='https://securegw-stage.paytm.in/theia/processTransaction';
if (PAYTM_ENVIRONMENT == 'PROD') {
	$PAYTM_STATUS_QUERY_NEW_URL='https://securegw.paytm.in/merchant-status/getTxnStatus';
	$PAYTM_TXN_URL='https://securegw.paytm.in/theia/processTransaction';
}

 $PAYTM_REFUND_URL = "https://securegw-stage.paytm.in/refund/HANDLER_INTERNAL/REFUND";	//TEST


//$PAYTM_REFUND_URL = define('PAYTM_REFUND_URL',"https://securegw.paytm.in/refund/HANDLER_INTERNAL/REFUND");	//PROD

define('PAYTM_REFUND_URL', $PAYTM_REFUND_URL);

define('PAYTM_STATUS_QUERY_URL', $PAYTM_STATUS_QUERY_NEW_URL);
define('PAYTM_STATUS_QUERY_NEW_URL', $PAYTM_STATUS_QUERY_NEW_URL);
define('PAYTM_TXN_URL', $PAYTM_TXN_URL);
?>
