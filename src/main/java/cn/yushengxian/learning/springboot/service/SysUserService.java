package cn.yushengxian.learning.springboot.service;

import java.util.List;

import cn.yushengxian.learning.springboot.base.CommonService;
import cn.yushengxian.learning.springboot.model.SysUser;

public interface SysUserService extends CommonService<SysUser, String>{
	
	public List<SysUser> getAllUsers();
}
