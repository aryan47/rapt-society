package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.beans.StudentQualification;
import com.project.jpa.riteshProject.entity.Student;
import com.project.jpa.riteshProject.services.UserService;

@Controller
@SessionAttributes({ "userName", "userEmail" })
@RequestMapping("/userProfile")
@PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
public class UserProfileController {
	private Long sid;
	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/", "" })
	public String profile(ModelMap map) {
		setProfile(map);
		return "userprofile/UserProfile";
	}

	@RequestMapping("/updateProfile")
	public String updateProfile(Student student, Address address, StudentQualification qualification) {
		// getting data from session
		student.setStudentqualification(qualification);
		student.setAddressEmbedd(address);
		student.setId(sid);
		System.out.println("--b " + qualification);
		// update the data to the database

		studentRepository.save(student);

		return "redirect:/userProfile";

	}

	@GetMapping("/profile")
	public String profile() {
		return "userprofile/profile";
	}

	@GetMapping("/history")
	public String history() {
		return "userprofile/history";
	}

	@GetMapping("/notification")
	public String notification() {
		return "userprofile/notification";
	}

	@GetMapping("/setting")
	public String setting() {
		return "userprofile/setting";
	}

	@PostMapping("/changeUserProfilePassword")
	public String changePassword(@RequestParam("currentPassword") String password,
			@RequestParam("newPassword") String newPassword, ModelMap map) {
		return userService.changeUserPassword(password, newPassword, (String)map.get("userEmail"));
	}

	public void setProfile(ModelMap map) {
		String email = (String) map.get("userEmail");
		Student student = studentRepository.findByEmail(email);
		sid = student.getId();
	
		map.addAttribute("qualification", student.getStudentqualification());
		map.addAttribute("address", student.getAddressEmbedd());
		map.addAttribute("student", student);
	}
}
