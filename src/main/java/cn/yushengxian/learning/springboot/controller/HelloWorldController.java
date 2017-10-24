package cn.yushengxian.learning.springboot.controller;


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
}