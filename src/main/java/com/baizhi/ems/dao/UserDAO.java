package com.baizhi.ems.dao;

import com.baizhi.ems.entity.User;
import org.apache.ibatis.annotations.Mapper;

public interface UserDAO {

    void save(User user);

}
