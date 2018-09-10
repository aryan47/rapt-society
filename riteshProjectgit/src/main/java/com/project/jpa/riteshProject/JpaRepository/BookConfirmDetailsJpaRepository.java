package com.project.jpa.riteshProject.JpaRepository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.project.jpa.riteshProject.beans.UserRequestSubject;
import com.project.jpa.riteshProject.entity.BookConfirmDetails;

@RepositoryRestResource(path = "/bookConfirmDetails")
public interface BookConfirmDetailsJpaRepository extends JpaRepository<BookConfirmDetails, UserRequestSubject> {
	List<BookConfirmDetails> findByEmail(String email);

	Object findEmailByUserRequestSubject(UserRequestSubject userRequestSubject);
	
	@Transactional
	@Modifying
	@Query("UPDATE BookConfirmDetails B SET B.phoneNo= ?2 , B.addressEmbd.address= ?3 WHERE B.userRequestSubject = ?1")
	void updateBookDet(UserRequestSubject req, String ph, String add);

	List<BookConfirmDetails> findByEmailAndIsActive(String email, boolean isActive);

	
}
