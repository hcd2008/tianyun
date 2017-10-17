<?php
namespace app\index\controller;
use app\common\controller\Base;
use think\Db;
class Index extends Base
{
	//首页内容
    public function index()
    {
    	$this->assign('yichuan',$this->getlists(1));
    	$this->assign('daifan',$this->getlists(2));
    	$this->assign('daishen',$this->getlists(4));
    	$this->assign('yichuan_sum',$this->getsum(1));
    	$this->assign('daifan_sum',$this->getsum(2));
    	$this->assign('daishen_sum',$this->getsum(4));
        return $this->fetch();
    }
    /**
     * 根据status得到信息列表
     * @Author   黄传东
     * @DateTime 2017-04-10T11:40:38+0800
     * @param    [type]                   $status [description]
     * @return   [type]                           [description]
     */
    public function getlists($status){
    	$res=Db::name('info')->where('status',$status)->limit(7)->order('itemid desc')->select();
    	return $res;
    }
    /**
     * 根据status获取信息数量
     * @Author   黄传东
     * @DateTime 2017-04-10T11:43:11+0800
     * @param    [type]                   $status [description]
     * @return   [type]                           [description]
     */
    public function getsum($status){
    	$sum=Db::name('info')->where('status',$status)->count();
    	return $sum;
    }
}
