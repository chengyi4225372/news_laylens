<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/10
 * Time: 10:14
 */

namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;


class Protuctinfos extends BasicAdmin
{

    private $dataform = 'protuct_infos';

    public function index() {
        $this->title = '设置产品对比详情';
        list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
        (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('title', "%{$get['keywords']}%");
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('time', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->order('id desc'));
    }

   //关联产品对比类型
    protected function _data_filter(&$data) {
        foreach ($data as $key => $val) {
            if($val['pid'] != 0){
                $data[$key]['cates'] = Db::name('protuct_cates')->where('id', '=', $val['pid'])->value('title');
            }
        }
    }


    public function add() {
        return $this->_form($this->dataform, 'form');
    }

    public function edit() {
        return $this->_form($this->dataform, 'form');
    }

    public function del() {
        if (DataService::update($this->dataform)) {
            $this->success("删除成功!", '');
        }
        $this->error("删除失败, 请稍候再试!");
    }


    public function forbid() {
        if (DataService::update($this->dataform)) {
            $this->success("禁用成功!", '');
        }
        $this->error("禁用失败, 请稍候再试!");
    }


    /**
     * 添加成功回跳处理
     * @param bool $result
     */
    protected function _form_result($result) {
        if ($result !== false) {
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/protuctinfos/index')];
            $this->success('数据保存成功！', "{$base}#{$url}?spm={$spm}");
        }
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume() {
        if (DataService::update($this->dataform)) {
            $this->success("启用成功!", '');
        }
        $this->error("启用失败, 请稍候再试!");
    }




}