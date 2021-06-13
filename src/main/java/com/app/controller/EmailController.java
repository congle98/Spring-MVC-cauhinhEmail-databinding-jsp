package com.app.controller;

import com.app.model.EmailConfig;
import com.app.serivce.EmailConfigService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmailController {
    EmailConfigService emailConfigService = new EmailConfigService();

    @GetMapping("/home")
    public String home(Model model){
        model.addAttribute("emailConfigs",emailConfigService.findAll());
        return "home";
    }

    @GetMapping("/create")
    public String newEmailConfig(Model model){
        model.addAttribute("emailConfig",new EmailConfig());
        model.addAttribute("languages",new String[]{"vietnamese","japanese","english","chinaese"});
        model.addAttribute("pageSize",new int[]{1,2,3,4,5,6,7,8,9,10});
        return "create";
    }
    @PostMapping("/addEmailConfig")
    public String save(EmailConfig emailConfig){
        System.out.println(emailConfig);
        emailConfigService.save(emailConfig);
        return "redirect:/home";
    }
}
