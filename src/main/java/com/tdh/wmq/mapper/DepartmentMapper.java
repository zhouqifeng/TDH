package com.tdh.wmq.mapper;

import com.tdh.wmq.model.Department;

import java.util.List;

public interface DepartmentMapper {

    List<Department> selectDepartments();

    Department selectByDid(int did);

}
