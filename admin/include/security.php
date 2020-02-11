<?php
class Security
{
    var $UserLevel = array();
    var $UserLevelPriv = array();
    var $mtime = '20200201-1';
    function getCurrentUserName()
    {
        return strval(@$_SESSION['user_name']);
    }
    function getCurrentUserID()
    {
        return strval(@$_SESSION['user_id']);
    }
    function IsLoginValid($sUsername, $sPassword)
    {
        $sPassword = crypt($sPassword, 'xy');
        $bValidate = TRUE;
        $bValidP   = FALSE;
        if ($bValidate) {
            $bValid = $this->ValidateUser($sUsername, $sPassword);
        }
        return $bValid;
    }

    function ValidateUser($usr, $pwd)
    {
        global $conn;
        $ValidUser = FALSE;
        if (!$ValidUser) {
            $rs    = $conn->Execute("call spM_SW_GetUserLoginInfo('" . $usr . "','" . $pwd . "');");
            //print_r($rs);exit;
            $P_num = $rs->Recordcount();
            if($P_num == 0) {
                return $ValidUser;
            }
            if ($P_num != 0 ) {
                ob_clean();
                session_name(EW_APP_SESSION);
                if(!isset($_SESSION))
                {
                    session_start();
                }
                $ValidUser = true;
                if ($ValidUser) {
                    //$_SESSION[EW_SESSION_STATUS]  = "myasgpmapplogin";
                    $_SESSION[EW_SESSION_STATUS]  = EW_APP_LOGIN_SESSION;

                    $_SESSION['mtime']            = time();
                    $_SESSION['user_name']        = $rs->fields('USR_NAME');
                    $_SESSION['user_dspname']     = $rs->fields('USR_DSPNAME');
                    $_SESSION['user_id']          = $rs->fields('USR_ID');
                    $_SESSION['user_pwd']         = $rs->fields('USR_PWD');
                    $_SESSION['user_email']       = $rs->fields('USR_EMAIL');
                    $_SESSION['user_lvl']         = $rs->fields('USR_ACLVL');
                    $_SESSION['user_avatar']      = $rs->fields('USR_AVATAR');
                }
                $rs->Close();
                $sql = "insert into user_log(log_type,log_uid,log_desc,log_date,log_time,log_ip) select 1,'" . $_SESSION['user_id'] . "', ucase(CONCAT('USER ','" . $_SESSION['user_dspname'] . "', ' LOGGED IN FROM : ','" . getRealIpAddr() . "')),curdate()+0,CURTIME()+0,'" . getRealIpAddr() . "';";
                $conn->Execute($sql);
                if ($rs)
                    $rs->Close();
            }
            return $ValidUser;
        }
    }
    function IsLoggedIn()
    {
        return (@$_SESSION[EW_SESSION_STATUS] == EW_APP_LOGIN_SESSION);
    }
    function IsSysAdmin()
    {
        return (@$_SESSION[EW_SESSION_SYS_ADMIN] == 1);
    }
    function IsAdmin()
    {
        return ($this->CurrentUserLevelID() == -1 || $this->IsSysAdmin());
    }
    function GetClientSetting()
    {
        $response['state_index']      = basename(dirname($_SERVER['PHP_SELF']));
        $response['state']            = array();
        $response['user_name']        = @$_SESSION['user_name'];
        $response['user_dspname']     = @$_SESSION['user_dspname'];
        $response['user_id']          = @$_SESSION['user_id'];
        $response['user_email']       = @$_SESSION['user_email'];
        $response['user_lvl']         = @$_SESSION['user_lvl'];
        $response['user_add']         = @$_SESSION['user_add'];
        $response['user_edit']        = @$_SESSION['user_edit'];
        $response['user_del']         = @$_SESSION['user_del'];
        $response['user_view']        = @$_SESSION['user_view'];
        $response['user_srch']        = @$_SESSION['user_srch'];

        $response['root_path']        = ROOT_PATH;
        //$response['module_path']      = "system/pages/";
        $response['admin_path']       = "admin/";
        $response['include']          = "admin/include/";
        $response['user_pwd']         = @$_SESSION['user_pwd'];
        $response['user_avatar']      = @$_SESSION['user_avatar'];

        return $response;
    }

    function &ew_Connect()
    {
        try {
            $db = NewADOConnection('mysqli'); //&NewADOConnection('mysqli')
            $db->debug = FALSE;
            $db->port = EW_CONN_PORT;
            $db->PConnect(EW_CONN_HOST, EW_CONN_USER, EW_CONN_PASS, EW_CONN_DB);
            if (!$db->isConnected()){
                header("HTTP/1.0 503 Service Unavailable");
            }
            return $db;
        }catch (Exception $e) {
            echo $e->getMessage();
        }
    }
    /*
    function &ew_Connect1()
    {
        $object =& ADONewConnection("mysqli");
        $object->debug = FALSE;
        $object->port  = EW_CONN_PORT1;
        $object->PConnect(EW_CONN_HOST1, EW_CONN_USER1, EW_CONN_PASS1, EW_CONN_DB1);
        return $object;
    }*/
}