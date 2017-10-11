package cn.yushengxian.learning.springboot.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author JE鍝�
 * @email 1272434821@qq.com
 * @description:鐪嬬湅spring-boot鐨勫己澶у拰鏂逛究
 */
@Controller
public class HelloWorldController {

  @RequestMapping("/hello1")
  public String hello1() {
    return "frontpage/index";
  }

  @RequestMapping("/hello2")
  public List<String> hello2() {
    return Arrays.asList(new String[] { "A", "B", "C" });
  }
}