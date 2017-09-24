package cn.yushengxian.learning.springboot.base;

/**
 * @author JE哥
 * @email 1272434821@qq.com
 * @description:自定义异常类
 */
public class ServiceException extends RuntimeException {
  /**
	 * 
	 */
private static final long serialVersionUID = 4212816755073160688L;

public ServiceException(String msg) {
    super(msg);
  }
}
