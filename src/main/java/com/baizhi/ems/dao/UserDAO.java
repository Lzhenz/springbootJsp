package com.baizhi.ems.dao;

import com.baizhi.ems.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

public interface UserDAO {

    void save(User user);

    User findUserByUserNameAndPassWord(@Param("username") String username, @Param("password") String password);
}
