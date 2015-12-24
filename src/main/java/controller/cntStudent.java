package controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Score;
import model.Student;
import service.StudentService;


@Controller
@RequestMapping("student")
public class cntStudent {
	
	@Autowired
	@Qualifier("studentService")
	StudentService service;
	
	/*
	 * This method will list all existing students.
	 */
	@RequestMapping(value = { "/info" }, method = RequestMethod.GET)
	public String studentInfo(@RequestParam("student_id") int student_id, ModelMap model){
		// scoreForm
		Score scoreForm	= new Score();
		model.addAttribute("scoreForm", scoreForm);
		
		Student student = service.findById(student_id);
		model.addAttribute("student", student);
		model.addAttribute("address", student.getAddress());
				
		
		List<Score> scores  = student.getScores();
		List<Score> modelScores	= new ArrayList<Score>(); 
		for(Score score:scores){
			if (score != null){
				modelScores.add(score);
			}
		}
		model.addAttribute("scores", modelScores);
		return "studentInfo";
	}
	
	@RequestMapping(value = { "/", "/list" }, method = RequestMethod.GET)
	public String listStudents(ModelMap model) {

		List<Student> students = service.findAllStudents();
		model.addAttribute("students", students);
		return "allstudents";
	}

	/*
	 * This method will provide the medium to add a new student.
	 */
	@RequestMapping(value = { "/new" }, method = RequestMethod.GET)
	public String newStudent(ModelMap model) {
		Student student = new Student();
		model.addAttribute("student", student);
		model.addAttribute("edit", false);
		return "registration";
	}

	/*
	 * This method will be called on form submission, handling POST request for
	 * saving student in database. It also validates the user input
	 */
	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
	public String saveStudent(@Valid Student student, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		service.saveStudent(student);

		model.addAttribute("success", "Student " + student.getFirstName() + " registered successfully");
		return "success";
	}


	/*
	 * This method will provide the medium to update an existing student.
	 */
	@RequestMapping(value = { "/edit-{id}-student" }, method = RequestMethod.GET)
	public String editEmployee(@PathVariable Integer id, ModelMap model) {
		Student student = service.findById(id);
		model.addAttribute("student", student);
		model.addAttribute("edit", true);
		return "registration";
	}
	
	/*
	 * This method will be called on form submission, handling POST request for
	 * updating student in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-{id}-student" }, method = RequestMethod.POST)
	public String updateEmployee(@Valid Student student, BindingResult result,
			ModelMap model, @PathVariable String id) {

		if (result.hasErrors()) {
			return "registration";
		}

		service.updateStudent(student);

		model.addAttribute("success", "Student " + student.getFirstName()	+ " updated successfully");
		return "success";
	}

	
	/*
	 * This method will delete an student by it's ID value.
	 */
	@RequestMapping(value = { "/delete-{id}-student" }, method = RequestMethod.GET)
	public String deleteStudent(@PathVariable Integer id) {
		service.deleteStudentById(id);
		return "redirect:/list";
	}
}
