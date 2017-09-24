package cn.yushengxian.learning.springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
@MapperScan(basePackages = "cn.yushengxian.learning.springboot.mapper")
//@MapperScan("cn.yushengxian.learning.springboot.mapper")
public class SblearningApplication {

	public static void main(String[] args) {
		SpringApplication.run(SblearningApplication.class, args);
	}
}
