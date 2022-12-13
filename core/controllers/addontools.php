<?php
defined('APP_NAME') or die(header('HTTP/1.1 403 Forbidden'));

if(!defined('SEO_ADDON_TOOLS')){
    $controller = 'error';
    require(CON_DIR. $controller . '.php');
}



