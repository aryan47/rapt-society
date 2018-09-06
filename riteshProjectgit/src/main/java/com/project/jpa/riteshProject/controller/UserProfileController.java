package com.project.jpa.riteshProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.beans.StudentQualification;
import com.project.jpa.riteshProject.entity.Student;

@Controller
@SessionAttributes({ "userName", "userEmail" })
@RequestMapping("/userProfile")
@PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
public class UserProfileController {
	private Long sid;
	@Autowired
	private StudentJpaRepository studentRepository;

	@RequestMapping(value={"/", ""})
	public String profile(ModelMap map) {
		setProfile(map);
		return "userprofile/UserProfile";
	}

	@RequestMapping("/updateProfile")
	public String updateProfile(Student student, Address address,StudentQualification qualification) {
		// getting data from session
		student.setStudentqualification(qualification);
		student.setAddressEmbedd(address);
		student.setId(sid);
		System.out.println("--b " + qualification );
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


	

	public void setProfile(ModelMap map) {
		String email = (String) map.get("userEmail");
		Student student = studentRepository.findByEmail(email);
		sid = student.getId();
		System.out.println("----a " + student);
		System.out.println("----a " + student.getAddressEmbedd());

		map.addAttribute("qualification", student.getStudentqualification());
		map.addAttribute("address", student.getAddressEmbedd());
		map.addAttribute("student", student);
	}
}
