package cn.yushengxian.learning.springboot.service.impl;

import org.springframework.stereotype.Service;

import cn.yushengxian.learning.springboot.base.CommonServiceImpl;
import cn.yushengxian.learning.springboot.model.SysUser;
import cn.yushengxian.learning.springboot.service.SysUserService;

@Service("sysUserService")
public class SysUserServiceImpl extends CommonServiceImpl<SysUser, String> implements SysUserService{
	
}
