package com.project.jpa.riteshProject.services;

import java.io.IOException;
import java.nio.file.FileSystemException;
import java.util.Optional;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.project.jpa.riteshProject.JpaRepository.ImageUploadJpaRepository;
import com.project.jpa.riteshProject.entity.ImageUpload;

@Service

public class ImageUploadService {

	@Autowired
	private ImageUploadJpaRepository imageRepo;

	public ImageUpload storeImage(MultipartFile file, HttpServletResponse response, String email)
			throws FileSystemException {
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		System.out.println("----clean path" + fileName);
		System.out.println("---- path" + file.getName());
		try {

			ImageUpload image = new ImageUpload(fileName, file.getContentType(), file.getBytes());
			image.setEmail(email);
			Optional<ImageUpload> findByEmail = imageRepo.findByEmail(email);
			if (findByEmail.isPresent()) {
				ImageUpload imageUpload = findByEmail.get();
				image.setId(imageUpload.getId());
			}

			return imageRepo.save(image);

		} catch (IOException e) {
			throw new FileSystemException("could not store file");
		}
	}

	public ResponseEntity<byte[]> setProfilePic(String email) {
		Optional<ImageUpload> findByEmail = imageRepo.findByEmail(email);
		if(findByEmail.isPresent()) {
			ImageUpload image = findByEmail.get();
			HttpHeaders header = new HttpHeaders();
			header.setCacheControl(CacheControl.noCache().getHeaderValue());
			if (image != null) {
				ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(image.getData(), header, HttpStatus.OK);
				return responseEntity;
			}
			
		}
		return new ResponseEntity<>(HttpStatus.OK);
		
	}
}
