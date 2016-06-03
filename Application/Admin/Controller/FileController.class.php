<?php 
namespace Admin\Controller;
use Think\Controller;
class FileController extends Controller {
	function add(){
		$str = file_get_contents('./Public/file/user.txt');
        $file = unserialize($str);
        $this->assign('file',$file);
		$this->display();
	}
	function handleAdd(){
		$str = serialize($_POST);
		$fp = fopen('./Public/file/user.txt','w');
		fwrite($fp,$str);
		//file_put_contents('./Public/file/user.txt',$str);
		$this->success('成功',U('admin/file/add'));

	}
}