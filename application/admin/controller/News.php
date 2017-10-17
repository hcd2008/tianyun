<?php
	namespace app\admin\controller;
	use think\Db;
	use app\common\controller\AdminBase;

	class News  extends AdminBase{
		/**
		 * 新闻列表
		 * @Author   黄传东
		 * @DateTime 2017-10-17T13:54:41+0800
		 * @return   [type]                   [description]
		 */
		public function index(){
			$lists=Db::name('news')->order('paixu,id desc')->select();
			$this->assign('lists',$lists);
			return $this->fetch();
		}
	}
?>