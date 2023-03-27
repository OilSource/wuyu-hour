package com.oaker;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @Description :
 * <功能详细描述>
 * @author: 须尽欢_____
 * @Data : 2021/9/3 10:52
 */
@MapperScan("com.oaker.*.mapper")
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class AdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(AdminApplication.class, args);
        System.out.println("无鱼工时管理系统业务服务，启动成功！！");
        StringBuilder commandLog = new StringBuilder();
        commandLog.append("+==================================================================================+\n");
        commandLog.append("+                       无鱼工时管理系统业务服务，启动成功！！                          +\n");
        commandLog.append("+==================================================================================+\n");
        System.out.println(commandLog.toString());
    }

}
