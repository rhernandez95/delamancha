<?php

define('DATABASE', [
    'driver'    => 'mysql',
    'host'      => 'localhost',
    'database'  => 'delamancha',
    'username'  => 'root',
    'password'  => 'galaxy95',
    'charset'   => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix'    => '',
]);

define('DLM_MAIL', [
	'Mailer' => 'smtp',
	'CharSet' => 'UTF-8',
	// 0 = off (producción), 1 = client messages, 2 = client and server messages
	'SMTPDebug' => '0',
    'Host' => 'smtp.live.com',//smtp-mail.outlook.com
    'Port' => '587',
 	'SMTPSecure' => 'tls',
    'SMTPAuth' => 'true',
    'Username' => 'squalo_hdez@live.com.mx',
    'Password' => 'kachirivasna',
    'Timeout' => '30',
    'AddAddress' => 'ramon_hernandezr@stoconsulting.com',
    'AddCC' => '',
    'Subject' => 'De la Mancha: ',
]);

