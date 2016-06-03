<?php
namespace Home\Controller;
use Think\Controller;
class ManlifeController extends Controller {
    public function index(){
    	$Images = M('category');
    	$list =$Images->where("parent_id = 1")->select();
    	$this->assign('manlife',$list) ;
       	$this->display(); 
    }
    function life(){

    }
}