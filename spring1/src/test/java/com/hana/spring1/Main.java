package com.hana.spring1;

import com.hana.spring1.data.CustDto;
import com.hana.spring1.exception.DuplicatedIdException;
import com.hana.spring1.frame.Service;
import com.hana.spring1.service.CustService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    public static void main(String[] args) {
        ApplicationContext factory =
                new ClassPathXmlApplicationContext("spring.xml");

        Service<String, CustDto> service =
                (Service<String, CustDto>) factory.getBean("userService");

        CustDto u = new CustDto("id02", "pwd02", "lee");
        try {
            service.add(u);
        } catch (DuplicatedIdException e) {
            throw new RuntimeException(e);
        }
    }
}