<?php 


/****
* app info
*/
define('APP_NAME', 'Dictionary');
define('APP_DESC', 'Cөздік программасы');

/****
* database config
*/
if($_SERVER['SERVER_NAME'] == 'localhost')
{
	//database config for local server
	define('DBHOST', 'localhost');
	define('DBNAME', 'udemy_db');
	define('DBUSER', 'root');
	define('DBPASS', '');
	define('DBDRIVER', 'mysql');

	//root path e.g localhost/
	define('ROOT', 'https://localhost/dict/public');
}else
{
	//database config for live server
	define('DBHOST', 'localhost');
	define('DBNAME', 'udemy_db');
	define('DBUSER', 'root');
	define('DBPASS', '');
	define('DBDRIVER', 'mysql');

	define('ROOT', 'http://');
}


