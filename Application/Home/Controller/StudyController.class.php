<?php
namespace Home\Controller;
use Think\Controller;
class StudyController extends Controller {
    public function index(){
       	$category = M('category');
    	$list =$category->where("parent_id = 7")->select();
    		foreach($list as $v){
    		$category_list[$v['id']] = $v;
    	}
        //var_dump($category_list);die();
    	$blog = M('blog')->where("parent_categroy_id = 7")->order("create_time desc")->select();
    	$this->assign('study',$category_list);
    	$this->assign('blog',$blog);
       	$this->display(); 
    }
    
}