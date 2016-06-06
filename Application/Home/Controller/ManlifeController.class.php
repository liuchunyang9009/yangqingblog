<?php
namespace Home\Controller;
use Think\Controller;
class ManlifeController extends Controller {
    public function index(){
    	$Images = M('category');
    	$blog=M('blog');
    	if(I('get.categroy_id')){
        $where['categroy_id']=I('get.categroy_id');
        }
        $where['parent_categroy_id']=1;
    	$list =$Images->where("parent_id = 1")->select();
    	foreach($list as $v){
    		$lists[$v['id']] = $v;
    	}
    	$blog_list = $blog->where($where)->order("create_time desc")->select();
    	$this->assign('manlife',$lists);
    	$this->assign('boke',$blog_list);
       	$this->display(); 
    }
    function detail(){
    	$where['id']=I('get.id');
    	$blog = M('blog');
    	$list =$blog->where($where)->find();
    	$this->assign('manlife',$list) ;
        $this->display();
    }
}