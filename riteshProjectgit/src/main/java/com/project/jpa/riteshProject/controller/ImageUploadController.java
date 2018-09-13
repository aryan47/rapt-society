package com.project.jpa.riteshProject.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.jpa.riteshProject.entity.ImageUpload;
import com.project.jpa.riteshProject.services.ImageUploadService;

@Controller
public class ImageUploadController {
	@Autowired
	private ImageUploadService imageService;

	@PostMapping("/uploadImage")
	public String uploadImage(@RequestParam("file") MultipartFile file, RedirectAttributes attr,
			HttpServletResponse response, @SessionAttribute("userEmail") String email) throws IOException {
		ImageUpload storeImage = imageService.storeImage(file, response, email);

		attr.addFlashAttribute("imageName", storeImage.getFileName());
		return "redirect:/userProfile";
	}

	@RequestMapping("/getImage")
	public ResponseEntity<?> getImage(@SessionAttribute("userEmail") String email) {
		return imageService.setProfilePic(email);
	}

}
