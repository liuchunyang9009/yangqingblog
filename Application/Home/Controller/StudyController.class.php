<?php
namespace Home\Controller;
use Think\Controller;
class StudyController extends Controller {
    public function index(){
       	$category = M('category');
        $blog=M('blog');
        if(I('get.categroy_id')){
        $where['categroy_id']=I('get.categroy_id');
        }
        $where['parent_categroy_id']=7;
    	$list =$category->where("parent_id = 7")->select();
    		foreach($list as $v){
    		$category_list[$v['id']] = $v;
    	}
    	$blog_log = $blog->order("create_time desc")->select();
        $blog_is = $blog->order('read_num desc')->select();
        $blog_log= $blog->where($where)->select();
        $this->assign('log',$blog_log);
        $this->assign('bl',$blog_is);
    	$this->assign('study',$category_list);
    	$this->assign('blog',$blog_log);
       	$this->display(); 
    }
    
}