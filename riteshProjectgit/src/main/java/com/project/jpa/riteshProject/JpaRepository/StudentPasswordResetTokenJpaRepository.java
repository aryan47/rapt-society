package com.project.jpa.riteshProject.JpaRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.jpa.riteshProject.entity.StudentPasswordResetToken;
@Repository
public interface StudentPasswordResetTokenJpaRepository extends JpaRepository<StudentPasswordResetToken, Integer> {
	StudentPasswordResetToken findByToken(String token);
	
	
}
