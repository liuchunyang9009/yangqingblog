<?php
namespace Home\Controller;
use Think\Controller;
class ManlifeController extends Controller {
	public $detail_url = array(
		1 => array('controller'=>'Manlife','method'=>'detail'),
		7 => array('controller'=>'Study','method'=>'detail'),
		);
    public function index(){
    	$Images = M('category');
    	$list =$Images->where("parent_id = 1")->select();
    	foreach($list as $v){
    		$list[$v['id']] = $v;
    	}
    	$blog = M('blog')->order("create_time desc")->select();
    	$this->assign('manlife',$list);
    	$this->assign('boke',$blog);
       	$this->display(); 
    }
/*    function life(){
    	$Images = M('category');
    	$list =$Images->where("parent_id = 1")->select();
    	$this->assign('manlife',$list) ;

    	$list = M('');
    }*/
}