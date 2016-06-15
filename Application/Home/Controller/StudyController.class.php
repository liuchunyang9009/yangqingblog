<?php
namespace Home\Controller;
use Think\Controller;
class StudyController extends CommonController {
    public function _initialize (){
        parent::_initialize();
    }
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
        $blog= $blog->where($where)->select();
        $this->assign('blog_new',$blog_log);
        $this->assign('blog_hot',$blog_is);
    	$this->assign('study',$category_list);
    	$this->assign('blog',$blog);
       	$this->display(); 
    }
    public function detail(){
        echo CONTROLLER_NAME;
        $blog = M('blog');
        $category = M('category');
        $comment = M('comment');
        $id=I('get.id');
        if($id){
        $where['id']=$id;
        }
        $list =$category->where("parent_id = 7")->select();
            foreach($list as $v){
            $category_list[$v['id']] = $v;
        }
        $blog_list =$blog->where($where)->find();
        $map['parent_categroy_id']=7;
        $map['categroy_id']=$blog_list['categroy_id'];
        $map['id']  = array('lt',$id);
        $blog_s = $blog->where($map)->order('id desc')->find();
        $map['id']  = array('gt',$id);
        $blog_x = $blog->where($map)->order('id asc')->find();
        $blog_log = $blog->order("create_time desc")->select();
        $blog_is = $blog->order('read_num desc')->select();

        $count      = $comment->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,5);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page->setConfig('prev',"上一页");
        $Page->setConfig('next','下一页');
        $Page->setConfig('header','<span class="rows">共 %TOTAL_ROW% 名用户</span>');
        $Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%%HEADER%');
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $whe['blog_id']=$id;
        $comment_list = $comment->where($whe)->limit($Page->firstRow.','.$Page->listRows)->select(); 

        
        //$comment_list=$comment->where($whe)->select();
        $this->assign('page',$show);
        $this->assign('blog_new',$blog_log);
        $this->assign('blog_hot',$blog_is);
        $this->assign('blog_list',$blog_list);
        $this->assign('blog_s',$blog_s);
        $this->assign('blog_x',$blog_x);
        $this->assign('study',$category_list);
        $this->assign('comment',$comment_list);
        $this->display();
    }
    function add(){
        $_POST['create_time']=time();
        $_POST['user_id']=3;
        M('Comment')->create();
        M('Comment')->add();
        $this->redirect('Home/Study/detail',array('id'=>$_POST['blog_id']));
    }

  
}