package controller;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class MyController {
    @GetMapping("/save")
    public String save(@RequestParam("condiment") String[] condiment, Model model) {
        List<String> condiments=new ArrayList<>();
        condiments.addAll(Arrays.asList(condiment));
        System.out.println(condiments);
        model.addAttribute("condiments",condiments);
        return"/index";
    }
}
