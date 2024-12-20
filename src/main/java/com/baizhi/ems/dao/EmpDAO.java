package com.baizhi.ems.dao;

import com.baizhi.ems.entity.Emp;

import java.util.List;

public interface EmpDAO {

    List<Emp> findAllEmpData();

    void save(Emp empData);
}
