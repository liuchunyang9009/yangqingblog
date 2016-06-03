<?php
namespace Admin\Controller;
use Think\Controller;
class NavigationController extends Controller
{
    public function index(){
        $Images = M('category'); // 实例化Images对象
        $count      = $Images->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page->setConfig('prev',"上一页");
        $Page->setConfig('next','下一页');
        $Page->setConfig('header','<span class="rows">共 %TOTAL_ROW% 条记录</span>');
        $Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%%HEADER%');
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $Images->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('user',$list);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }
	public function add(){
		$list = M('Category')->where('parent_id=0')->select();
		$this->assign('list',$list);
		$this->display();
	}
	function handleAdd(){
		M('Category')->create();
		M('Category')->add();
		$this->success('添加成功',U('admin/navigation/index'));
	}
    function update(){
        $id = I('get.id',0);
        $do = M('Category')->where("id=$id")->find();
        $this->assign('category',$do);
        $this->display();
    }
    function handleUpdate(){
        $id = I('post.id',0);
        M('Category')->create();
        M('Category')->where("id=$id")->save();
        $this->success('修改成功',U('admin/navigation/index'));
    }
    function del(){
        $pic = M('Category')->where(array('id'=>I('get.id',0)))->delete();
        if ($pic) {
            $this->success('已删除',U('admin/navigation/index'));
        }else{
            $this->error('删除失败',U('admin/navigation/index'));
        }   
    }
}
?>