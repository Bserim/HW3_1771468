package kr.ac.hansung.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.Serim;
import kr.ac.hansung.model.Registration;
import kr.ac.hansung.service.SerimService;
import kr.ac.hansung.service.RegistrationService;

@Controller
public class SerimController {

		@Autowired
		private SerimService serimService;
		@Autowired
		private RegistrationService registrationService;
		
		@RequestMapping("/serims")
		public String showSerims(Model model) {
			List<Serim> serims = serimService.getCurrent();
			model.addAttribute("serims", serims);
			
			return "serims";
		}
		
		@RequestMapping("/result1")
		public String showResult1(Model model) {
			List<Serim> serims = serimService.getCurrent();
			model.addAttribute("serims", serims);
			
			return "result1";
		}	
		
		@RequestMapping("/result2")
		public String showResult2(Model model) {
			List<Serim> serims = serimService.getCurrent();
			model.addAttribute("serims", serims);
			
			return "result2";
		}
		
		@RequestMapping("/result3")
		public String showResult3(Model model) {
			List<Serim> serims = serimService.getCurrent();
			model.addAttribute("serims", serims);
			
			return "result3";
		}
		
		@RequestMapping("/result4")
		public String showResult4(Model model) {
			List<Serim> serims = serimService.getCurrent();
			model.addAttribute("serims", serims);
			
			return "result4";
		}
		
		@RequestMapping("/viewRegistration")
		public String showResult5(Model model) {
			List<Registration> registrations = registrationService.getCurrent();
			model.addAttribute("registrations", registrations);
			
			return "viewRegistration";
		}
		
		@RequestMapping("/createClass")
		public String createSerims(Model model) {
			
			model.addAttribute("registration", new Registration());
			
			return "createClass";
		}
		
		@RequestMapping("/docreated")
		public String doCreate(Model model, @Valid Registration registration, BindingResult result) {
			
			if(result.hasErrors()) {
				System.out.println("== Form data does not validated ==");
			
				List<ObjectError> errors = result.getAllErrors();
				
				for(ObjectError error:errors) {
					System.out.println(error.getDefaultMessage());
				}
				return "createClass";
			}
			
			registrationService.insert(registration);
			
			return "classcreated";
		}
}
