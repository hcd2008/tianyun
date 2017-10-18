<?php
	namespace app\index\controller;
	use app\common\controller\Base;
	class Contact extends Base{
		public function index(){
			return $this->fetch();
		}
	}
?>