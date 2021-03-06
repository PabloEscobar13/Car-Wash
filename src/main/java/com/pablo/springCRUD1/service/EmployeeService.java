package com.pablo.springCRUD1.service;

import com.pablo.springCRUD1.Entity.Employee;

import java.util.List;

/**
 * Created by Pablo on 03.08.2016.
 */
public interface EmployeeService {
    void addEmployee(Employee e);
    void updateEmployee(Employee e);
    List<Employee> listEmployee();
    Employee getEmployeeById(int id);
    List<Employee> getEmployeeByName(String name);
    void removeEmployee(int id);
}

