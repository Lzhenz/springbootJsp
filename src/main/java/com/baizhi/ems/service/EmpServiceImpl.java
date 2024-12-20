package com.baizhi.ems.service;

import com.baizhi.ems.dao.EmpDAO;
import com.baizhi.ems.entity.Emp;
import com.baizhi.ems.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class EmpServiceImpl implements EmpService{

    @Autowired
    private EmpDAO empDAO;
    @Override
    public List<Emp> findAll(){
        return empDAO.findAllEmpData();
    }

    @Override
    public void addEmp(Emp empData){
        empData.setId(UUID.randomUUID().toString());
        empDAO.save(empData);
    };
}
