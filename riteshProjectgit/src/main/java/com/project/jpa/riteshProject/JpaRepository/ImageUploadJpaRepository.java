package com.project.jpa.riteshProject.JpaRepository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.jpa.riteshProject.entity.ImageUpload;

@Repository
public interface ImageUploadJpaRepository extends JpaRepository<ImageUpload, Long> {

	 Optional<ImageUpload> findByEmail(String email);
	 
}
