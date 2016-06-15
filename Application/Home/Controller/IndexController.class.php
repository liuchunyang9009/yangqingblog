<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends CommonController {
    public function _initialize (){
        parent::_initialize();
    }
	public $detail_url = array(
		1 => array('controller'=>'Manlife','method'=>'detail'),
		7 => array('controller'=>'Study','method'=>'detail'),
		);
    public function index(){
    	$blog = M('Blog');
    	$category = M('category');
    	$list =$category->where("parent_id != 0")->select();
    	foreach($list as $v){
    		$categroy_lists[$v['id']] = $v;
    	}
    	if(I('get.id')){
    	$where['id']=I('get.id');	
    	}
    	$blog_list = $blog->where($where)->order('create_time desc')->select();
    	$blog_is = $blog->where($where)->order('read_num desc')->select();
    	$this->assign('blog',$blog_list);
        $this->assign('blog_is',$blog_is);
    	$this->assign('categroy',$categroy_lists);
    	$this->assign('detail_url',$this->detail_url);
        $this->display(); 
    }
   /* public function detail(){
        $where['id']=I('get.id');
        $blog = M('blog');
        $blog_list =$blog->where($where)->find();
        $this->display();
    }*/
    
}