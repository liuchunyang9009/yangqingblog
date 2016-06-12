<?php
namespace Home\Controller;
use Think\Controller;
class LiuyanController extends Controller {
    public function index(){
    	$comment = M('comment');
    	$liuyan_list=$comment->select();
    	$this->assign('liuyan',$liuyan_list);
       	$this->display(); 
    }   
}