package com.baizhi.ems.service;

import com.baizhi.ems.entity.Emp;
import com.baizhi.ems.entity.User;

import java.util.List;

public interface EmpService {
    List<Emp> findAll();

    void addEmp(Emp empData);
}
