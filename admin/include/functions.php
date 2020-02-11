<?php

function ew_StripSlashes($value)
{
    if (!get_magic_quotes_gpc())
        return $value;
    if (is_array($value)) {
        return array_map('ew_StripSlashes', $value);
    } else {
        return stripslashes($value);
    }
}

function sqlValue($val, $quote)
{
    if ($quote)
        $tmp = sqlStr($val);
    else
        $tmp = $val;
    
    if ($tmp == "")
        $tmp = "NULL";
    elseif ($quote)
        $tmp = "'" . $tmp . "'";
    return $tmp;
}
function ew_CurrentUserIP()
{
    return ew_ServerVar("REMOTE_ADDR");
}

function getRealIpAddr(){
    if (!empty($_SERVER['HTTP_CLIENT_IP']))   //check ip from share internet
    {
        $ip=$_SERVER['HTTP_CLIENT_IP'];
    }
    elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))   //to check ip is pass from proxy
    {
        $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
    }
    else
    {
        $ip=$_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}

function ew_ServerVar($Name)
{
    $str = @$_SERVER[$Name];
    if (empty($str))
        $str = @$_ENV[$Name];
    return $str;
}
function ew_CurrentHost()
{
    return ew_ServerVar("HTTP_HOST");
}
function ew_getClientName()
{
    return gethostbyaddr($_SERVER['REMOTE_ADDR']);
}

function ew_CurrentDate($namedformat = -1)
{
    if ($namedformat > -1) {
        if ($namedformat == 6 || $namedformat == 7) {
            return ew_FormatDateTime(date('Y-m-d'), $namedformat);
        } else {
            return ew_FormatDateTime(date('Y-m-d'), 5);
        }
    } else {
        return date('d-m-Y');
    }
}
function ew_CurrentTime()
{
    return date("H:i:s");
}
function sqlStr($val)
{
    return str_replace("'", "''", $val);
}
function ew_AdjustSql($val)
{
    $val = addslashes(trim($val));
    return $val;
}
function ew_CompareValue($v1, $v2)
{
    if (is_null($v1) && is_null($v2)) {
        return TRUE;
    } elseif (is_null($v1) || is_null($v2)) {
        return FALSE;
    } else {
        return ($v1 == $v2);
    }
}
function ew_HtmlEncode($exp)
{
    return htmlspecialchars(strval($exp));
}
function ew_ValueSeparator($rowcnt)
{
    return ", ";
}