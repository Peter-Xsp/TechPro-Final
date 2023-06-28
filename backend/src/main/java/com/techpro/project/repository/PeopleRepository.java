package com.techpro.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techpro.project.entity.People;

@Repository
public interface PeopleRepository extends JpaRepository<People, Integer> {
}

//public interface DepartmentRepository extends JpaRepository<Department, Long> {}
//public interface DepartmentRepository extends CrudRepository<Department, Long> {}
