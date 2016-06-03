<?php
namespace Admin\Controller;
use Think\Controller;
class BlogController extends Controller {
    public function index(){

    	$blog = M('Blog'); // 实例化User对象
		$count      = $blog->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,5);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('prev',"上一页");
        $Page->setConfig('next','下一页');
        $Page->setConfig('header','<span class="rows">共 %TOTAL_ROW% 名用户</span>');
        $Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%%HEADER%');
        $show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $blog->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('blog',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }
    public function add(){
        $category = M('category');
        $category_info=$category->select();
        $list=getTree($category_info);
        $this->assign('category',$list);
    	$this->display();
    }
    public function handleAdd(){
    	$pic = uploadFile('pic');
    	$_POST['pic'] = $pic;
		$_POST['create_time'] = time();
        $category = M('category');
        $category_info=$category->where("id={$_POST['categroy_id']}")->find();
        $_POST['parent_categroy_id']=$category_info['parent_id'];
    	M('blog')->create();
    	M('blog')->add();
    	$this->success('新增成功',U('admin/blog/index'));
    }
    public function update(){
        $id = I('get.id',0);
    	$blog_info = M('blog')->where("id = $id")->find();
    	$this->assign('blog',$blog_info);
    	$this->display();
    }
    public function handleUpdate(){
    	$id = I('post.id',0);
        if ($_FILES['pic']['name']) {
            $pic = uploadFile('pic');
            $_POST['pic'] = $pic;
        }
            
        $_POST['update_time'] = time();
    	M('blog')->create();
    	M('blog')->where("id = $id")->save();
    	$this->success('修改成功',U('admin/blog/index'));
    }
    public function del(){
    	$blog = M('blog');
    	$blog->where(array('id'=>I('get.id',0)))->delete();
    	$this->success('已删除',U('admin/blog/index'));
    }
}