<?php
//DB Config

define("EW_CONN_HOST", "recruitment-test-mysql.caqylurhpyhw.eu-west-1.rds.amazonaws.com", TRUE); //Default Connection
define("EW_CONN_PORT", 3306, TRUE);
define("EW_CONN_USER", "candidate", TRUE);
define("EW_CONN_PASS", "PrototypeRocks123654", TRUE);
define("EW_CONN_DB", "star-wars", TRUE);

//Local Testing config
/*define("EW_CONN_HOST", "localhost", TRUE); //Default Connection
define("EW_CONN_PORT", 3306, TRUE);
define("EW_CONN_USER", "root", TRUE);
define("EW_CONN_PASS", "123456", TRUE);
define("EW_CONN_DB", "star_wars", TRUE);*/

define("EW_IS_WINDOWS", (strtolower(substr(PHP_OS, 0, 3)) === 'win'), TRUE);
define("EW_IS_PHP5", (phpversion() >= "5.0.0"), TRUE);
define("EW_PATH_DELIMITER", ((EW_IS_WINDOWS) ? "\\" : "/"), TRUE);
define("EW_ROOT_RELATIVE_PATH", ".", TRUE);
define("EW_DEFAULT_DATE_FORMAT", "dd/mm/yyyy", TRUE);

$_SERVER["DOCUMENT_ROOT"] = str_replace('\\', '/', getcwd());
$DOCUMENT_ROOT = $_SERVER['DOCUMENT_ROOT']."/";
define("EW_PROJECT_NAME", "StarWarsApp", TRUE);
define("EW_SESSION_STATUS", EW_PROJECT_NAME . "_status", TRUE);
define("EW_APP_SESSION", "MyStarWarsApp", TRUE);
define("EW_APP_LOGIN_SESSION", EW_APP_SESSION."-LOGIN", TRUE);
define("EW_APP_PATH", dirname($_SERVER["DOCUMENT_ROOT"])."/");

?>
