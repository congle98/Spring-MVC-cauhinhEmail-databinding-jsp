package com.app.serivce;

import com.app.model.EmailConfig;

import java.util.ArrayList;
import java.util.List;

public class EmailConfigService {
    public List<EmailConfig> emailConfigList = new ArrayList<>();
    public List<EmailConfig> findAll(){
        return emailConfigList;
    }
    public void save(EmailConfig emailConfig){
        emailConfigList.add(emailConfig);
    }
}
