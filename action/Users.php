<?php
/*if(empty($_SESSION["user_id"] && $_REQUEST['task']!=='login')) { 
    header("HTTP/1.0 403 Forbidden");
    exit;    	
}*/
require_once('../admin/header.php');
require_once('../class/users_class.php');
$usrCls = new Users();
$result = array();
$task   = isset($_REQUEST['task']) ? ($_REQUEST['task']) : null;

try {
    /*switch ($task) {
        case 'login':
            $result = $usrCls->doLogin();
            break;
    }*/
    exit(json_encode($result));
}
catch (Exception $e) {
    echo '{failure: true}';
}
