package cn.yushengxian.learning.springboot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.yushengxian.learning.springboot.model.SysUser;
import cn.yushengxian.learning.springboot.service.SysUserService;

@Controller
@RequestMapping("/user")
public class SysUserController {

	@Autowired
	private SysUserService sysUserService;
	
	@RequestMapping("/toview")
	public String toNewView(HttpServletRequest request){
		
		SysUser user = sysUserService.selectByPrimaryKey("3682ca8c-a70b-49c7-9678-914d0ff49e6d");
		
		request.setAttribute("user", user);
		return "tuser/tuser_add";
	}
}
