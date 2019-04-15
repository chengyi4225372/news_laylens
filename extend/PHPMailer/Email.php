<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/15
 * Time: 16:47
 */

namespace PHPMailer;
use PHPMailer\PHPMailer;
use PHPMailer\Exception;
use think\facade\config;
class Email {

    /**
     * 邮件发送
     * @param $to 接收人
     * @param string $subject 邮件标题
     * @param string $content 邮件内容(html模板渲染后的内容)
     * @throws Exception
     * @throws phpmailerException
     */
    public static function send_email($to ,$subject,$content,$name='劳伦斯'){
        // Load Composer's autoloader
        //require 'vendor/autoload.php';
        // Instantiation and passing `true` enables exceptions
        $mail = new PHPMailer();
        try {
            $mail->CharSet =config('email.charset');
            //Server settings
            $mail->SMTPDebug = 2;                                       // Enable verbose debug output
            $mail->isSMTP();                                            // Set mailer to use SMTP
            $mail->Host       = config('email.host');  // Specify main and backup SMTP servers
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = config('email.username');                     // SMTP username
            $mail->Password   = config('email.password');                              // SMTP password
            $mail->SMTPSecure = config('email.smtpsecure');                                          // 允许 TLS 或者ssl协议
            $mail->Port       =config('email.port');                                 // TCP port to connect to
            $mail->Encoding = config('email.encoding');
            //Recipients
            $mail->setFrom(config('email.username'), 'Mailer');  //发件人
            $mail->addAddress($to, $name);  // 收件人
            $mail->addReplyTo(config('email.username'), 'mailer'); //回复的时候回复给哪个邮箱 建议和发件人一致
            //$mail->addCC('cc@example.com');
            //$mail->addBCC('bcc@example.com');

            // Attachments
            // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
            // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
            // Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = $subject;
            //$mail->msgHTML($content);
            $mail->Body    = $content;
            // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
            $mail->send();
            return true;
            //echo 'Message has been sent';
        } catch (Exception $e) {
            return false;
            //echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}