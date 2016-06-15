<?php 	
function say($id){
	echo $id.'2';
}

function uploadFile($pic){
	$upload = new \Think\Upload();// 实例化上传类
    $upload->maxSize   =     3145728 ;// 设置附件上传大小
    $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
    $upload->rootPath  =     './Public/'; // 设置附件上传根目录
    $upload->savePath  =     'upload/'; // 设置附件上传（子）目录
    // 上传文件 
    $info   =   $upload->upload();
    $pic_url = $info[$pic]['savepath'].$info[$pic]['savename'];
    return $pic_url;
}

function getTree($area, $pid = 0,$child_field = 'id'){
    $arr = array();
    foreach ($area as $v) {
        if ($v['parent_id'] == $pid) {
            $v['child'] = getTree($area, $v[$child_field]);
            $arr[] = $v;
        }
    }
    return $arr;
}
function is_mobile_request()   
{   
    $_SERVER['ALL_HTTP'] = isset($_SERVER['ALL_HTTP']) ? $_SERVER['ALL_HTTP'] : '';   
        $mobile_browser = '0';   
    if(preg_match('/(up.browser|up.link|mmp|symbian|smartphone|midp|wap|phone|iphone|ipad|ipod|android|xoom)/i', strtolower($_SERVER['HTTP_USER_AGENT'])))   
        $mobile_browser++;   
    if((isset($_SERVER['HTTP_ACCEPT'])) and (strpos(strtolower($_SERVER['HTTP_ACCEPT']),'application/vnd.wap.xhtml+xml') !== false))   
        $mobile_browser++;   
    if(isset($_SERVER['HTTP_X_WAP_PROFILE']))   
        $mobile_browser++;   
    if(isset($_SERVER['HTTP_PROFILE']))   
        $mobile_browser++;   
    $mobile_ua = strtolower(substr($_SERVER['HTTP_USER_AGENT'],0,4));   
    $mobile_agents = array(   
        'w3c ','acs-','alav','alca','amoi','audi','avan','benq','bird','blac',   
        'blaz','brew','cell','cldc','cmd-','dang','doco','eric','hipt','inno',   
        'ipaq','java','jigs','kddi','keji','leno','lg-c','lg-d','lg-g','lge-',   
        'maui','maxo','midp','mits','mmef','mobi','mot-','moto','mwbp','nec-',   
        'newt','noki','oper','palm','pana','pant','phil','play','port','prox',   
        'qwap','sage','sams','sany','sch-','sec-','send','seri','sgh-','shar',   
        'sie-','siem','smal','smar','sony','sph-','symb','t-mo','teli','tim-',   
        'tosh','tsm-','upg1','upsi','vk-v','voda','wap-','wapa','wapi','wapp',   
        'wapr','webc','winw','winw','xda','xda-'  
        );   
    if(in_array($mobile_ua, $mobile_agents))   
        $mobile_browser++;   
    if(strpos(strtolower($_SERVER['ALL_HTTP']), 'operamini') !== false)   
        $mobile_browser++;   
    // Pre-final check to reset everything if the user is on Windows   
    if(strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'windows') !== false)   
        $mobile_browser=0;   
    // But WP7 is also Windows, with a slightly different characteristic   
    if(strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'windows phone') !== false)   
        $mobile_browser++;   
    if($mobile_browser>0)   
        return true;   
    else 
        return false;   
}