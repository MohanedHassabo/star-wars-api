<?php
define('ROOT_PATH', dirname(__DIR__)); //dirname(__FILE__)
define('ADMIN_PATH', dirname(__FILE__));
$vendorName = "adodb/adodb-php"; //adodb5
if (!defined('ADODB_DIR')) define('ADODB_DIR', ROOT_PATH.'/vendor/'.$vendorName);
require_once ADMIN_PATH.'/include/config.php' ;
session_name(EW_APP_SESSION);
session_start();

function enableCORS() {
    // Allow from any origin
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }
    // Access-Control headers are received during OPTIONS requests
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

        exit(0);
    }
    return true;
}
enableCORS();


if(isset($_REQUEST['mtask']) && $_REQUEST['mtask']=='logout'){
    session_name(EW_APP_SESSION);
    if(!isset($_SESSION))
    {
        session_start();
    }
    @session_destroy();
    // header("Location: login.php");
    $result['success'] = true;
    echo json_encode($result);
    exit();
}
/*
$extlogin = isset($_REQUEST['extlogin'])? $_REQUEST['extlogin']: 0;
if(empty($_SESSION["user_id"]) && $extlogin==0){
    //$task = @$_REQUEST['task'];
    $task = isset($_REQUEST['task']) ?($_REQUEST['task']) : null;
    if($task!='login' && $task!='loginInfo'){
        header("HTTP/1.0 403 Forbidden");
        exit;
    }
}*/

require_once ADODB_DIR.'/adodb.inc.php';
require_once ADMIN_PATH.'/include/functions.php';
require_once ADMIN_PATH.'/include/security.php';
global $ADODB_FORCE_TYPE, $ADODB_FETCH_MODE;
if(isset($_REQUEST['fetch']) && @$_REQUEST['fetch']==1) $ADODB_FETCH_MODE = ADODB_FETCH_ASSOC;

$Security = new Security();
//if(!$Security->IsLoggedIn()) { exit();}
$conn = $Security->ew_Connect();
if(!$conn){
    die('Could not connect to local or remote database');exit();
}
if ($conn){ //&& $conn->isConnected()
    $conn->EXECUTE("set names 'utf8'");
}

global $conn;

//print_r($conn);
global $Security;
$request = @$_SERVER['REQUEST_METHOD'];

header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); 
header("Cache-Control: private, no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

$user_agent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : "undefined";
//$isIE = (ereg("MSIE", $user_agent)) ? true : false;
$isIE = !!preg_match('/MSIE (6|7|8)/', $_SERVER['HTTP_USER_AGENT']);
if ($isIE) {
    header('Cache-Control: maxage=3600');
    header('Pragma: public');
}
header("Expires: 0");

