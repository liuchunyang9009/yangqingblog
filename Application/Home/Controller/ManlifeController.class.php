<?php
namespace Home\Controller;
use Think\Controller;
class ManlifeController extends CommonController {
    public function _initialize (){
        parent::_initialize();
    }
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
        if($categroy = I('get.categroy_id')){
        $s=$lists[$categroy]['name'];
        } else{
            $s = "慢生活";
        }
    	$blog_list = $blog->order("create_time desc")->select();
        $blog_is = $blog->order('read_num desc')->select();
        $blog_log= $blog->where($where)->select();
        $this->assign('man',$s);
        $this->assign('log',$blog_log);
        $this->assign('bl',$blog_is);
    	$this->assign('manlife',$lists);
    	$this->assign('boke',$blog_list);
       	$this->display(); 
    }
    public function detail(){
    	$blog = M('blog');
       
        $id=I('get.id');
        if($id){
        $where['id']=$id;
        }
        $blog_list =$blog->where($where)->find();
        $map['parent_categroy_id']=1;
        $map['categroy_id']=$blog_list['categroy_id'];
        $map['id']  = array('lt',$id);
        $blog_s = $blog->where($map)->order('id desc')->find();
        $map['id']  = array('gt',$id);
        $blog_x = $blog->where($map)->order('id asc')->find();
        $this->assign('blog_list',$blog_list);
        $this->assign('blog_s',$blog_s);
        $this->assign('blog_x',$blog_x);
        $this->display();
    }
}