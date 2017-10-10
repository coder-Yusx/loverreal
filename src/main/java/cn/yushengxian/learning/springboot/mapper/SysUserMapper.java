package cn.yushengxian.learning.springboot.mapper;

import java.util.List;

import cn.yushengxian.learning.springboot.model.SysUser;
import tk.mybatis.mapper.common.Mapper;

public interface SysUserMapper extends Mapper<SysUser>{
	
	public List<SysUser> selectAllUsers();

}
