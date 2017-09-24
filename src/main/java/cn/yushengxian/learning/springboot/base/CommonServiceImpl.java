package cn.yushengxian.learning.springboot.base;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;

@Service
public abstract class CommonServiceImpl<T,PK extends Serializable> implements CommonService<T,PK> {
    /**
     * 泛型注入
     */
    @Autowired
    private Mapper<T> mapper;

    public T selectByPrimaryKey(PK entityId) {

        return mapper.selectByPrimaryKey(entityId);
    }

    public int deleteByPrimaryKey(PK entityId) {
        return mapper.deleteByPrimaryKey(entityId);
    }

    public int insert(T record) {
        return mapper.insert(record);
    }

    public int insertSelective(T record) {
        return mapper.insertSelective(record);
    }

    public int updateByPrimaryKeySelective(T record) {
        return mapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(T record) {
        return mapper.updateByPrimaryKey(record);
    }

    public List<T> selectByExample(Example example) {
        return mapper.selectByExample(example);
    }
}