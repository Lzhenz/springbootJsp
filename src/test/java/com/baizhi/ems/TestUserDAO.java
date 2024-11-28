package com.baizhi.ems;

import com.baizhi.ems.dao.UserDAO;
import com.baizhi.ems.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.UUID;

@SpringBootTest(classes = EmsApplication.class)
@RunWith(SpringRunner.class)
public class TestUserDAO {

    @Autowired
    private UserDAO userDAO;

    @Test
    public void testSave(){
        userDAO.save(new User(
                UUID.randomUUID().toString(),
                "xiaochen",
                "陈艳男",
                "123",
                "男"));
    }
}
