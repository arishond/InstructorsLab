<?php



function googleCache($url) {
    $googleCacheUrl = 'http://webcache.googleusercontent.com';

    $query = 'hl=en&q=' . 'cache:' . urlencode($url) . '&strip=1';
    $url = $googleCacheUrl . '/search?' . $query;
    
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0');
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, false);
    curl_setopt($ch, CURLOPT_HEADER, false);
    if (defined('CURLOPT_IPRESOLVE') && defined('CURL_IPRESOLVE_V4')){
        curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
    }
    $html = curl_exec($ch);
    curl_close($ch);

    if (!is_string($html) || !strlen($html))
    {
        return false;
    }
    
    $dateExplode = explode("appeared on",$html);
    $dateExplode = explode("GMT",$dateExplode[1]);
    $cacheDate = trim($dateExplode[0]);
    if($cacheDate != ""){
       $cacheDate = $cacheDate .' GMT';
    }
    return $cacheDate;
}
