package cn.yushengxian.learning.springboot.controller;


import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HelloWorldController {

  @RequestMapping("/hello1")
  public String hello1() {
    return "frontpage/index";
  }

  @RequestMapping("/hello2")
  public String hello2() {
	  return "frontpage/index2";
  }
  
  @RequestMapping("/hello3")
  public String hello3() {
	  return "frontpage/login";
  }
  
  @RequestMapping("/hello4")
  public String hello4() {
	  return "frontpage/register";
  }
  
  @RequestMapping("/hello5")
  public String hello5() {
	  return "frontpage/index3";
  }
  @RequestMapping("/hello6")
  public String hello6() {
	  return "frontpage/index4";
  }
  
  @RequestMapping("/hello7")  
  public void pushMessage(HttpServletResponse response,HttpServletRequest request){
      OutputStream bos = null;
      try {
          String data1 ="www.imiansha.com爱面纱网站上线了\n\n";
          String data2 = "www.imiansha.com爱面纱网站正在招兵买马\n\n";
          //声明浏览器在连接断开之后进行再次连接之前的等待时间 10秒
          String retry = "retry:"+10000+"\n\n";
          //事件的标识符
          String id="id:100\n\n";
          //最后一次接收到的事件的标识符
          String last = request.getHeader("Last-Event-ID");
          //logger.info(last);
          bos = new BufferedOutputStream(response.getOutputStream());
          response.setContentType("text/event-stream");//记得要设置哦
          bos.write(data1.getBytes());
          bos.write(data2.getBytes());
          bos.write(retry.getBytes());
          bos.write(id.getBytes());
          //bos.flush();
      } catch (IOException e) {
          e.printStackTrace();
      }finally{
          try {
              bos.close();
          } catch (IOException e) {
              e.printStackTrace();
          }
      }
  }
}