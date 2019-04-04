<?php
/**
 * Copyright Frank.
 * Author: Frank
 * E-mail: frank_diao@126.com
 * Date: 2018/8/8/008
 * Time: 4:47
 */

namespace app\index\controller;

use think\Controller;
use think\Exception;
use think\Loader;
use app\index\controller\Common;
use PHPMailer\PHPMailer;
use PHPMailer\SMTP;
class SendEmail extends Common
{


    // $host [SMTP地址]
    private $host = 'smtp.163.com';

    //$send_email [发送邮箱账号]
    private $send_email='cy732345907@163.com';

    //$pwd [发送邮箱密码]
    private $pwd ='cy4225372';

    //$to [接收邮箱账号]
    private  $to ="732345907@qq.com";

    //$title [邮件标题]
    private  $title= '这是一份来劳伦斯官网的邮件！';

    //邮件内容; $content
    private $content ='';

    //附件 $file
    private $file='';

    /**
     * 邮件发送方法
     * @param $toEmail [接收邮箱]
     * @param $mail [发送邮箱]
     * @param $title [邮件标题]
     * @param $cotent [邮件内容]
     * @param array $file [邮件附件]
     * @return bool
     * @throws \Exception
     */
    public function send($toEmail, $mail, $title, $cotent, $file=[]){
        return $this->sendMail($mail['host'], $mail['send_email'], $mail['password'], $toEmail, $title, $cotent, $file);
    }

    /**
     * 发送邮件
     * @param $host [SMTP地址]
     * @param $send_email [发送邮箱账号]
     * @param $pwd [发送邮箱密码]
     * @param $to [接收邮箱账号]
     * @param $title [邮件标题]
     * @param $content [邮件内容]
     * @param $file [邮件附件]
     * @return bool
     * @throws \Exception
     */
    public function sendMail($host, $send_email, $pwd, $to='' , $title, $content, $file){
        //实例化PHPMailer核心类
       // Loader::import('PHPMailer.src.PHPMailer',EXTEND_PATH,'.php');
       // Loader::import('PHPMailer.src.SMTP',EXTEND_PATH,'.php');
        $mail = new PHPMailer();

        //是否启用smtp的debug进行调试 开发环境建议开启  默认为关闭
        $mail->SMTPDebug = 0;

        //使用smtp鉴权方式发送邮件
        $mail->isSMTP();

        //smtp需要鉴权 这个必须是true
        $mail->SMTPAuth=true;

        //SMTP地址
        $mail->Host = 'smtp.163.com';

        //设置使用ssl加密方式登录鉴权
        $mail->SMTPSecure = 'ssl';

        //设置ssl连接smtp服务器的远程服务器端口号
        $mail->Port = 465;

        //设置smtp的helo消息头 这个可有可无 内容任意
        // $mail->Helo = 'Hello smtp.qq.com Server';

        //设置发件人的主机域 可有可无 默认为localhost 内容任意，建议使用您的域名
        $mail->Hostname = 'localhost';

        //设置发送的邮件的编码
        $mail->CharSet = 'UTF-8';

        //设置发件人姓名 任意内容
        $mail->FromName = '发件人姓名';

        //smtp登录的账号 这里填入字符串格式邮箱账号的即可
        $mail->Username = 'cy732345907@163.com';

        //smtp登录的密码 （部分邮箱为授权码）
        $mail->Password = 'cy4225372';

        //设置发件人邮箱地址
        $mail->From = $send_email;

        //邮件正文是否为html编码
        $mail->isHTML(true);

        //收件人邮箱地址 参数一为邮箱地址 参数二为给该地址设置的昵称
        $mail->addAddress($to,'邮件');//重复调用可添加多个收件人

        //邮件标题
        $mail->Subject = $title;

        //邮件正文 若isHTML设置为true，则可是完整的html字符串 （可用file_get_contents函数读取本地的html文件）
        $mail->Body = $content;

        //添加附件 参数一为附件存放的目录 参数二为在邮件附件中该附件的名称
        if (!empty($file)){
            try{
                $name = explode(DIRECTORY_SEPARATOR,$file);

                //添加附件，该方法重复调用可上传多个附件
                $mail->addAttachment($file,$name[count($name)-1]);
            }
            catch (Exception $e)
            {
                echo $e->getMessage();
            }
        }

        try{
            //发送邮件
             dump($mail->send());
             exit();
        }catch (\Exception $e){
            echo $e->getMessage();
        }

        //返回结果
        //  return $status?true:false;

    }


    /**
     * 邮件模板
     * @param $vCode
     * @return string
     */
    public function emailTemp($vCode){
        $code = "<div>验证码：".$vCode."</div>";
        return $code;
    }
}