package will.zhang.boot.demo.ctrl;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author will.zjw
 * @date 2018-07-09 11:29
 */
@RestController
public class HelloController {

//    @Value("${man.age}")
//    private String age;

    private String age = "88";

    @RequestMapping("/hello")
    public String hello(){
        return "hello" + age;
    }
}
