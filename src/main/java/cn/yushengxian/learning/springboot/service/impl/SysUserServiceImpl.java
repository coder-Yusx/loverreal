package cn.yushengxian.learning.springboot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yushengxian.learning.springboot.base.CommonServiceImpl;
import cn.yushengxian.learning.springboot.mapper.SysUserMapper;
import cn.yushengxian.learning.springboot.model.SysUser;
import cn.yushengxian.learning.springboot.service.SysUserService;

@Service("sysUserService")
public class SysUserServiceImpl extends CommonServiceImpl<SysUser, String> implements SysUserService{

	@Autowired
	private SysUserMapper sysUserMapper;
	
	public List<SysUser> getAllUsers() {
		// TODO Auto-generated method stub
		return sysUserMapper.selectAllUsers();
	}
	
}
