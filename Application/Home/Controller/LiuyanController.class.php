<?php
namespace Home\Controller;
use Think\Controller;
class LiuyanController extends CommonController {
    public function index(){
    	$comment = M('comment');
    	$liuyan_list=$comment->select();
    	$this->assign('liuyan',$liuyan_list);
       	$this->display(); 
    }  

    function ajax(){
    	$comment = M('comment');
    	$num = $_POST['num'];
    	$id = $_POST['id'];
		$array['nu']  = ++$num;
		$comment->where("id = $id")->save(array('top'=>$array['nu']));
		echo json_encode($array);
    } 
}