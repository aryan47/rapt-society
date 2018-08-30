package com.project.jpa.riteshProject.JpaRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.project.jpa.riteshProject.entity.Role;
@RepositoryRestResource(path="role")
public interface RoleJpaRepository extends JpaRepository<Role, Integer>{

}
