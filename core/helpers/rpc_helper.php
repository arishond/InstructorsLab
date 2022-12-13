<?php


 
function xmlRpcPing($url,$myBlogName,$myBlogUrl,$myBlogUpdateUrl,$myBlogRSSFeedUrl,$errorMsg) {

    $client = new IXR_Client( $url );
    $client->timeout = 3;
    $client->useragent .= ' -- PingTool/1.0.0';
    $client->debug = false;

    if( $client->query( 'weblogUpdates.extendedPing', $myBlogName, $myBlogUrl, $myBlogUpdateUrl, $myBlogRSSFeedUrl ) )
    {
        return $client->getResponse();
    }

    if( $client->query( 'weblogUpdates.ping', $myBlogName, $myBlogUrl ) )
    {
        return $client->getResponse();
    }

    return array("flerror" => false, "message" => $errorMsg);
}

?>