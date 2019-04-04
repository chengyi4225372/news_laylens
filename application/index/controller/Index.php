<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/1/14
 * Time: 13:13
 */
namespace app\index\controller;
use think\Db;
use app\index\controller\Common;
use think\Request;
use app\index\controller\SendEmail;
use think\Exception;
class Index extends Common {


    //调整
    public function tz(){
        return $this->view->fetch();
    }
    //轮平衡器
    public  function  pinghengqi(){
        return $this->view->fetch();
    }
    //轮胎拆装机
    public  function luntai_chai(){
        return $this->view->fetch();
    }

    //升降机
    public function sjj(){
        return $this->view->fetch();
    }

    //brake-lathes 制动机床
    public function brake_lathes(){
        return $this->view->fetch();
    }
//地图
    public function site_map(){
        return $this->view->fetch();
    }
//todo 职业生涯
    public function careers(){

        return $this->view->fetch();
    }
    // todo 关于 我们
    public function about_hunter(){

        return $this->view->fetch();
    }

    //todo 轮胎机 革命
    public function revolution(){
        return $this->view->fetch();
    }

    //todo 升降机
    public function scissor_lift_family(){
        return $this->view->fetch();
    }

    //todo 制动机床   autocomp
    public function autocomp(){
        return $this->view->fetch();
    }

    //todo 国际
    public function international(){
        return $this->view->fetch();
    }

    //todo we_go 下的具体地址
    public function map_list(){
        return $this->view->fetch();
    }

/*
//todo 底部 获取文档信息 Materials
 public function  materials(){
        return $this->view->fetch();
    }

//todo 底部 documents
 public function documents(){
        return $this->view->fetch();
    }
//todo 底部查看所有课程
  public function training(){
        return $this->view->fetch();
    }
*/
//todo company file 页面
public  function team(){
     return $this->view->fetch();
}

public function history(){
      return $this->view->fetch();
}

public  function services(){
    return $this->view->fetch();
}

/* todo  产品中间五个按钮     */

  //考虑的事情
  public function things_to_consider(){
      $id = input('get.id','','intval');
      //echo $id;exit();
      $things = Db::name('things_title')->where('cid',$id)->find();
      $things_info =Db::name('things_info')->where('cid',$id)->select();
      $this->assign('things',$things);
      $this->assign('things_info',$things_info);
      return $this->view->fetch();
   }

   //邮件 接收参数
    public function mail(){
       $data = input('post.');
      $arr = array();
        $arr[] = $data['Name'];
        $arr[] = $data['Phone'];
        $arr[] = $data['CompanyName']; //与名称一致
        $arr[] = $data['MailingAddress'];
        $arr[] = $data['EmailAddress'];
        $arr[] = $data['City'];
        $arr[] = $data['State'];
        $arr[] = $data['Zipcode'];
        $arr[] = $data['Comments'];
        $arr[] = $data['Interests'];
        //接入 PHP 邮件类
       $this->content = $arr;
        //todo 发送到 infor@lawren3d.com
        $email = new SendEmail();
        $emails =$email->send($this->title,$this->content,$this->file);
        if(!$emails){
            echo 111;
            exit();
            //return false;
        }
        exit(1111);
        //  return true;
  }


  //产品对比 带解决
    public function product_comparison(){
      return $this->view->fetch();
    }


/* todo 完成部分  */


//todo 我们去哪儿
    public function we_go(){
        return $this->view->fetch();
    }

    //todo 底部 Contact 联系我们
    public function contact(){
        return $this->view->fetch();
    }

    // todo 我们是谁
    public  function  who_we_are(){
        return   $this->view->fetch();
    }

    // todo 前台首页
    public function index(){
        return  $this->view->fetch();
    }

    //todo patents 专利和认证 后台需要优化
    public function patents(){
        /*一级 */
        $dta = Db::name('patents')->where('tid',0)->select();
        foreach($dta as $k =>$v){
            $dta[$k]['content'] = Db::name('patents')->where('tid',$v['id'])->select();
        }
        $this->assign('dta',$dta);
        return $this->view->fetch();
    }

    //升级资料
    public function upgrade(){
       $res = Db::name('upgrade')->select();
       $this->assign('res',$res);
       return  $this->fetch();
    }



    // q&a
    public function qalist(){
        $lists = Db::name('qa')->order('time desc')->select();
        $this->assign('lists',$lists);
        return $this->view->fetch();
    }
    //qa 详情
    public function qa_info(){
        $id=input('get.id');
        $qainfo=Db::name('qa')->where('id',$id)->find();
        $this->assign('qainfo',$qainfo);
        return $this->view->fetch();
    }

    // 客户服务
    public function support(){
        $support = Db::name('support')->find();
        $this->assign('support',$support);
        return $this->view->fetch();
    }



    // 新闻详情
    public function press(){
        $id = $this->request->param('id');
        $content = Db::name('new')->where(array('id'=>$id))->find();
        $this->assign('content',$content);
        return $this->view->fetch();
    }

    // 亮点
    public function highlights(){
        $light = Db::name('light')->order('id desc')->select();
        $this->assign('light',$light);
        return $this->view->fetch();
    }

    //新闻 列表
    public function news_education(){
        $years = input('years');
        if($years){
            $newss =Db::name('new')->where('years',$years)->order('time desc')->select();
        }else{
            $newss =Db::name('new')->whereNotIn('id','6,7')->order('time desc')->select();
        }
        $this->assign('newss',$newss);
        return $this->view->fetch();
    }
    //  调整 对其
    public function hawkeye_elite(){
        $id = input('get.id');
        //查找商品详情
        $info=$this->info($id);
        //特征
        $features =$this->features($id);
        //视频
        $media =$this->media($id);
        //规格
        $specs =$this->specs($id);
        //展示图
        $zhan_img=$this->zhan_img($id);
        //下载pdf
        $pdf = Db::name('download')->where('cid',$id)->find();
        //视频地址
        $videos = Db::name('videos')->where('cid',$id)->find();
        $this->assign('pdf',$pdf);
        $this->assign('videos',$videos);
        $this->assign('info',$info);
        $this->assign('features',$features);
        $this->assign('media',$media);
        $this->assign('specs',$specs);
        $this->assign('zhan_img',$zhan_img);
        return $this->view->fetch();
    }
    //个人条款
    public  function  terms_of_use(){
        //个人条款是第六条 新闻
        $id=6;
        $newss =Db::name('new')->where('id',$id)->find();
        $this->assign('newss',$newss);
        return $this->view->fetch();
    }
    // 隐私声明
    public function privacy(){
        $id = 7;
        $newss =Db::name('new')->where('id',$id)->find();
        $this->assign('newss',$newss);
        return $this->view->fetch();
    }
    //todo 登陆显示 经销商
    public function logon(){
        $dis= Db::name('distr')->select();
        $this->assign('dis',$dis);
        return  $this->view->fetch();
    }

}
