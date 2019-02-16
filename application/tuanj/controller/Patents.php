<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/1/26
 * Time: 13:28
 */

namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;
use think\Request;
use think\Paginator;
class Patents extends BasicAdmin {

    private $dataform = 'patents';

    public $get_date='';
    public function index() {
          $this->title = '专利(patents)';
          list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
         (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('name|id', "%{$get['keywords']}%");
          $list=Db::name($this->dataform)->order('id desc')->select();
          foreach ($list as $k =>$va){
              if(empty($list[$k]['title'])){
                  $list[$k]['tids'] = Db::name($this->dataform)->where('id',$list[$k]['tid'])->find();
              }
          }
            $this->assign('list',$list);
           
           return $this->view->fetch();
         //return parent::_list($db->order('id desc'));
    }

    /**
     * 添加
     * @return type
     */
    public function add() {
        if($this->request->isGet()) {
            $data = Db::name($this->dataform)->where('tid', 0)->select();
            $this->assign('data', $data);
            return $this->fetch('patents/forms');
        }else{
            $order = input('post.');
            $res = Db::name($this->dataform)->insert($order);
            if($res){
                $this->_form_result($res);
            }
        }
       // return $this->_form($this->dataform, 'form');
    }


    /**
     * 编辑
     * @return type
     */
    public function edit() {
        //return $this->_form($this->dataform, 'form');
        $id = $this->request->param('id');
        $vo = Db::name($this->dataform)->where('id',$id)->find();
        $data = Db::name($this->dataform)->where('tid', 0)->select();
        $this->assign('data', $data);
        $this->assign('vo',$vo);
        return $this->view->fetch('patents/form');
    }

    /**
     * 添加成功回跳处理
     * @param bool $result
     */
    protected function _form_result($result) {
        if ($result !== false) {
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/patents/index')];
            $this->success('数据保存成功！', "{$base}#{$url}?spm={$spm}");
        }
    }

    /**
     * 删除
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del() {
        if (DataService::update($this->dataform)) {
            $this->success("删除成功!", '');
        }
        $this->error("删除失败, 请稍候再试!");
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid() {
        if (DataService::update($this->dataform)) {
            $this->success("禁用成功!", '');
        }
        $this->error("禁用失败, 请稍候再试!");
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
