<?php
namespace Home\Controller;
use Think\Controller;
class AboutmeController extends CommonController {
	public function _initialize (){
		parent::_initialize();
	}
    public function index(){
    	$str = file_get_contents('./Public/file/user.txt');
        $file = unserialize($str);
        $this->assign('file',$file);
        $this->display(); 
    }
    
}