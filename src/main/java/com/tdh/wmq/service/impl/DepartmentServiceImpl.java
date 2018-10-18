package com.tdh.wmq.service.impl;

import com.tdh.wmq.mapper.DepartmentMapper;
import com.tdh.wmq.model.Department;
import com.tdh.wmq.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService{

    @Autowired
    DepartmentMapper mapper;

    @Override
    public List<Department> findDepartments() {
        return mapper.selectDepartments();
    }

    @Override
    public Department findByDid(int did) {
        return mapper.selectByDid(did);
    }
}
