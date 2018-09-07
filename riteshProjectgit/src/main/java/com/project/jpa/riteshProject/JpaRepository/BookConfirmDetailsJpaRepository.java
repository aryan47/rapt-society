package com.project.jpa.riteshProject.JpaRepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.project.jpa.riteshProject.entity.BookConfirmDetails;

@RepositoryRestResource(path="/bookConfirmDetails")
public interface BookConfirmDetailsJpaRepository extends JpaRepository<BookConfirmDetails, Integer>{
	List<BookConfirmDetails> findByEmail(String email);
}
