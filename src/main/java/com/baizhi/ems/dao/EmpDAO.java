package com.baizhi.ems.dao;

import com.baizhi.ems.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpDAO {

    List<Emp> findAllEmpData();

    void save(Emp empData);

    void deleteEmpData(@Param("id") String id);

    Emp findOneEmpData(@Param("id") String id);

    void updateEmpData(Emp empData);
}
