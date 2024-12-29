package com.baizhi.ems.controller;


import com.baizhi.ems.entity.Emp;
import com.baizhi.ems.service.EmpService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {

    @Autowired
    private EmpService empService;

    // 查询所有数据
    @GetMapping("/findAll")
    public String findAll(Model model){
        List<Emp> empList = empService.findAll();
        model.addAttribute("emplist",empList);
        return "ems/emslist";
    }

    @PostMapping("/addEmp")
    public String addEmp(Emp empdata){
        empService.addEmp(empdata);
        return "redirect:findAll";
    }

    @GetMapping("/deleteEmp")
    public String deleteEmp(String id){
        empService.deleteEmp(id);
        return "redirect:findAll";
    }

    @GetMapping("/findOne")
    public String findOne(String id, Model model){
        Emp emp = empService.findOne(id);
        model.addAttribute("emp",emp);
        return "ems/updateEmp";
    }

    @PostMapping("/updateEmp")
    public String updateEmp(Emp updateEmpData){
        empService.updateEmp(updateEmpData);
        return "redirect:findAll";
    }
}
