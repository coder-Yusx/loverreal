package cn.yushengxian.learning.springboot.base;

import java.util.List;

import tk.mybatis.mapper.entity.Example;

public interface CommonService<T, PK> {

    public T selectByPrimaryKey(PK entityId);

    public int deleteByPrimaryKey(PK entityId) ;
    
    public int insert(T record) ;

    public int insertSelective(T record) ;

    public int updateByPrimaryKeySelective(T record) ;

    public int updateByPrimaryKey(T record) ;

    public List<T> selectByExample(Example example) ;
}
