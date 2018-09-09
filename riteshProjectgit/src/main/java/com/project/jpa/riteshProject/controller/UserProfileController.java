package com.project.jpa.riteshProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.jpa.riteshProject.JpaRepository.BookConfirmDetailsJpaRepository;
import com.project.jpa.riteshProject.JpaRepository.StudentJpaRepository;
import com.project.jpa.riteshProject.beans.Address;
import com.project.jpa.riteshProject.beans.StudentQualification;
import com.project.jpa.riteshProject.beans.UserRequestSubject;
import com.project.jpa.riteshProject.entity.BookConfirmDetails;
import com.project.jpa.riteshProject.entity.Student;
import com.project.jpa.riteshProject.services.UserService;

@Controller
@SessionAttributes({ "userName", "userEmail" })
@RequestMapping({ "/userProfile", "/userprofile" })
@PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
public class UserProfileController {
	private Long sid;
	@Autowired
	private StudentJpaRepository studentRepository;
	@Autowired
	private UserService userService;
	@Autowired
	private BookConfirmDetailsJpaRepository bookRepository;

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
	public String history(ModelMap map) {
		List<BookConfirmDetails> bookDetails = userService.getBookDetails((String) map.get("userEmail"));
		map.addAttribute("bookDetail", bookDetails);
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
		return userService.changeUserPassword(password, newPassword, (String) map.get("userEmail"));
	}

	@PostMapping("/updateBookDetail")
	public String updateBook(UserRequestSubject reqSub, Address address, BookConfirmDetails book) {
		bookRepository.updateBookDet(reqSub, book.getPhoneNo(), address.getAddress());
		return "redirect:/userprofile/history";
	}

	@RequestMapping("/deleteBook")
	public String deleteBook(UserRequestSubject entity,ModelMap map) {
		entity.setAltEmail((String) map.get("userEmail"));
		bookRepository.deleteById(entity);
		return "redirect:/userprofile/history";
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
