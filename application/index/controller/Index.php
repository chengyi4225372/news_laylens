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
use think\Exception;
use PHPMailer\Email as EmailClass;
use think\facade\config;
class Index extends Common {



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

/*
  //todo 底部 获取文档信息 Materials
 public function  materials(){
        return $this->view->fetch();
    }

  //todo 底部 documents
 public function documents(){
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


    //todo 轮胎机 革命
    public function revolution(){
        return $this->view->fetch();
    }

    //todo 升降机


    //todo 制动机床   autocomp
    public function autocomp(){
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

/* todo 完成部分  */


    //调整
    public function tz(){
        $id = input('get.id');
        $lists = Db::name('chanping')
            ->alias('a')
            ->field('a.*,b.info_title')
            ->rightJoin('info b','a.id = b.cid')
            ->where('pid',$id)
            ->select();
        $this->assign('lists',$lists);
        return $this->fetch();
    }

    //考虑的事情
    public function things_to_consider(){
        $id = input('get.id','','intval');
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
        $arr['name'] = $data['Name'];
        $arr['phone'] = $data['Phone']; //电话号码
        $arr['companyname'] = $data['CompanyName']; //与名称一致
        $arr['address'] = $data['MailingAddress']; //公司地址
        $arr['email'] = $data['EmailAddress']; //邮箱地址
        $arr['city'] = $data['City'];  //省份
        $arr['state'] = $data['State'];  //构架
        $arr['zipcode'] = $data['Zipcode']; //邮政编码
        $arr['comments'] = $data['Comments'];//备注信息
        $arr['interests'] = implode(',',$data['Interests']); //有兴趣的
        //接入 PHP 邮件类
        // 使用定界符拼接发送的内容
        $sarr= <<<EOT
     Name:{$arr['name']} <br>
     MailingAddress:{$arr['address']} <br>
     Phone:{$arr['phone']} <br>
     EmailAddress:{$arr['email']} <br>
     City:{$arr['city']} <br>
     State:{$arr['state']} <br>
     Zipcode:{$arr['zipcode']} <br>
     comments:{$arr['comments']} <br>
     interests:{$arr['interests']}
EOT;
        // 发送邮箱;邮件标题;邮件内容;发件人
        $result = EmailClass::send_email(config('email.sendmail'), '这是一份来自劳伦斯官网的邮件！', $sarr, '劳伦斯');
        if ($result == 1) {
             $this->redirect('index/hawkeye_elite') ;
        }else{
            $this->error('email error!','');
        }
    }

    //产品对比 展示
    public function product_comparison(){
        //产品对比类型
        $duibi =Db::name('protuct_cates')->select();
        $pid = input('get.pid');
        //产品具体信息
        $img = Db::name('protuct_infos')->field('id,pid,img,title')->where('pid',$pid)->select();
        $this->assign('img',$img);
        $this->assign('duibi',$duibi);
        return $this->view->fetch();
    }

    //产品对比详情
    public function protuct_info(){
        //产品对比类型
        $duibi =Db::name('protuct_cates')->select();
        $this->assign('duibi',$duibi);
        //对比的具体详情
        $pid = input('get.pid');
        $data = input('get.data');
        if(strlen($data) >1 && strlen($data) <=3){
            $data = explode(',',$data);
            $info =Db::name('protuct_infos')
                ->where('id','in',[$data['0'],$data['1']])
                ->where('pid',$pid)
                ->select();
        }else{
            $data = explode(',',$data);
            $info =Db::name('protuct_infos')
                ->where('id','in',[$data['0'],$data['1'],$data['2']])
                ->where('pid',$pid)
                ->select();
        }
        $this->assign('info',$info);
        return $this->fetch();
    }


//todo 我们去哪儿
    public function we_go(){
        return $this->view->fetch();
    }
    // todo 我们是谁
    public  function  who_we_are(){
        return   $this->view->fetch();
    }
    // 前台首页
    public function index(){
        //首页头部视频
        $shipin =Db::name('video')->order('id asc')->find();
        //首页底部
        $foot = Db::name('home_video')->select();
        $this->assign('foot',$foot);
        $this->assign('shipin',$shipin);
        return  $this->view->fetch();
    }
    //专利和认证
    public function patents(){
        /*一级 */
        $dta = Db::name('patents')->where('tid',0)->select();
        foreach($dta as $k =>$v){
            $dta[$k]['content'] = Db::name('patents')->where('tid',$v['id'])->select();
        }
        $this->assign('dta',$dta);
        return $this->view->fetch();
    }
    // 联系我们
    public function contact(){
        $result = Db::name('contact')->order('id asc')->find();
        $this->assign('result',$result);
        return $this->view->fetch();
    }
    //下载中心
    public function downloading(){
        $res = Db::name('downloading')->select();
        $this->assign('res',$res);
        return $this->fetch();
    }
    //培训中心
    public function training(){
        $data = Db::name('training')->order('id asc')->find();
        $this->assign('data',$data);
        return $this->fetch();
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
    //todo 登陆显示 经销商 不明确是否有用
    public function logon(){
        $dis= Db::name('distr')->select();
        $this->assign('dis',$dis);
        return  $this->view->fetch();
    }

}
