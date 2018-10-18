package com.tdh.wmq.service;

import com.tdh.wmq.model.Department;

import java.util.List;

public interface DepartmentService {

    List<Department> findDepartments();

    Department findByDid(int did);

}
