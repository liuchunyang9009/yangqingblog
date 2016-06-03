<?php
namespace Home\Controller;
use Think\Controller;
class StudyController extends Controller {
    public function index(){
       	$Images = M('category');
    	$list =$Images->where("parent_id = 7")->select();
    		foreach($l as $v){
    		$l[$v['id']] = $v;
    	}
    	$blog = M('blog')->where("parent_categroy_id = 7")->order("create_time desc")->select();
    	$this->assign('study',$list);
    	$this->assign('boke',$blog);
       	$this->display(); 
    }
    
}