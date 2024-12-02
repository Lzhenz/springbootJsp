package com.baizhi.ems.service;

import com.baizhi.ems.dao.EmpDAO;
import com.baizhi.ems.entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EmpServiceImpl implements EmpService{

    @Autowired
    private EmpDAO empDAO;
    @Override
    public List<Emp> findAll(){
        return empDAO.findAllEmpData();
    }
}
