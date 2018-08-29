package com.project.jpa.riteshProject.JpaRepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.project.jpa.riteshProject.entity.Standard;
import com.project.jpa.riteshProject.entity.Subject;
@RepositoryRestResource(path = "standards")

public interface StandardsJpaRepository extends JpaRepository<Standard, Long> {
	public List<Subject> findNameByNameContaining(@Param("name") String name);
	// public List<Objects> findByNameAndClass()
}
