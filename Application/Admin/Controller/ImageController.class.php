<?php
namespace Admin\Controller;
use Think\Controller;
class ImageController extends Controller
{
    public function index(){
        $Images = M('Doing'); // 实例化Images对象
        $count      = $Images->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,2);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page->setConfig('prev',"上一页");
        $Page->setConfig('next','下一页');
        $Page->setConfig('header','<span class="rows">共 %TOTAL_ROW% 条记录</span>');
        $Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%%HEADER%');
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $Images->order('create_time')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('user',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }
    function add(){
        $this->display();
    }
    function handleAdd(){
        $pic = uploadFile('pic');
        $_POST['pic'] = $pic;
        $_POST['create_time'] = time();
        M('doing')->create();
        M('doing')->add();
        $this->success('新增成功',U('admin/image/index'));
    }
    function update(){
        $id = I('get.id',0);
        $do = M('doing')->where("id=$id")->find();
        $this->assign('doing',$do);
        $this->display();
    }
    function handleUpdate(){
        $id = I('post.id',0);
        if ($_FILES['pic']['content']) {
            uploadFile('pic');
            $_POST['pic'] = $pic;
        }
        $_POST['update_time'] = time();
        M('doing')->create();
        M('doing')->where("id=$id")->save();
        $this->success('修改成功',U('admin/image/index'));
    }
    function del(){
        $pic = M('Doing')->where(array('id'=>I('get.id',0)))->delete();
        if ($pic) {
            $this->success('已删除',U('admin/image/index'));
        }else{
            $this->error('删除失败',U('admin/image/index'));
        }   
    }
}

?>