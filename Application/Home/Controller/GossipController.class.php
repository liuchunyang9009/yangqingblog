<?php
namespace Home\Controller;
use Think\Controller;
class GossipController extends Controller {

    public function index(){
    	$Images = M('Doing'); // 实例
    /*	$list = $Images->select();*/
		$count      = $Images->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,3);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		//$Page->setConfig('prev',"");
       // $Page->setConfig('next','');
        $Page->setConfig('header','<span class="rows">共 %TOTAL_ROW% 条记录</span>');
        $Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%%HEADER%');
        $show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Images->order('create_time')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('gossip',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出		
        $this->display(); 
    }
    
}