<?php
namespace Home\Controller;
use Think\Controller;
class CommonController extends Controller {
    public function _initialize(){
    	if (is_mobile_request()) {
    		C('DEFAULT_THEME','mobile');
    	}
    	else{
    		C('DEFAULT_THEME','pc');
    	}
        /*$this->verifyLogin();
    	if (check_replay_login()) {
    		unset($_SESSION['me']);
    		$this->error("您的账号在其他设备登录，若不是本人操作请修改密码或联系管理员",'/');
    	}*/
	}

    /*public function verifyLogin(){
        $uid = $_SESSION['me']['id'];
        $user = D('user');
        $user_info = $user->where(array('id'=>$uid))->find();
        if($user_info['is_del'] == 1){
            echo '<script>alert("您的账号无法登陆，请联系管理员");window.location.href = "/home/user/logout";</script>';
        }
        if($user_info['formal'] == -1){
            // $this->redirect(U('home/practice/free'));
            $this->display('index/main');
        }elseif ($user_info['formal'] == 1 && $user_info['time_length'] <= 0) {
            echo '<script>alert("您的使用时间已到，请充值后再登录");window.location.href = "/home/user/logout";</script>';
        }
    }*/
}