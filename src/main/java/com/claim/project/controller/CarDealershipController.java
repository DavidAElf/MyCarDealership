package com.claim.project.controller;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.project.customer.Car;
import com.claim.project.customer.Customer;

@Controller
public class CarDealershipController {

	public static LocalDate currentDate = LocalDate.now();
	

	@Autowired
	public CustomerService customerService;

	@Autowired
	public CarService carService;

	@Autowired
	private HttpServletRequest request;

	@GetMapping({ "home", "/" })
	public String homePage(Model model) {
		model.addAttribute("cars", carService.findAllForSale());
		return "home";
	}
	
	@GetMapping("sell") //Default
	public String sellPage(Model model) {
		return "sell";
	}
	
	@GetMapping("records") //Default
	public String recordPage(Model model) {
		return "records";
	}

	@GetMapping("about-us")
	public String aboutUsPage(Model model) {
		return "about-us";
	}

	@GetMapping("purchase")
	public String purchaseCar(Model model) {
		return "purchase";
	}
	
	@GetMapping("sign-up")
	public ModelAndView signUpPage(Model model) {
		return new ModelAndView("sign-up", "customer", new Customer());
	}

	@PostMapping("sign-up")
	public String handleSignUpPage(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
		customerService.saveCustomer(customer);
		model.addAttribute("newCustomer", customer);
		model.addAttribute("welcome", "Welcome " + customer.getFirstName());
		model.addAttribute("msg",
				"Thank you for signing up with Car D's Place. We are <br>looking forward to working with you further. <br><br>Please login to continue.");
		return "thank-you";
	}

	@GetMapping("login")
	public ModelAndView loginPage(Model model) {
		return new ModelAndView("login", "customer", new Customer());
	}

	@PostMapping("login")
	String authenticate(@RequestParam String email, @RequestParam String password, Model model) {

		Customer acc = customerService.findByEmail(email);
		if (acc != null && acc.getPassword().equals(password)) {
			model.addAttribute("account", acc);
			request.getSession().setAttribute("email", acc.getEmail());
			return "welcome";
		} else {
			model.addAttribute("error", "Inavalid Credentials");
			return "login";
		}
	}

	@GetMapping("user-sell")
	public ModelAndView newCarOnMarket(Model model) {
		return new ModelAndView("user-sell", "car", new Car());
	}

	@PostMapping("user-sell")
	public String handleSignUpPage(Model model, @ModelAttribute("car") Car car, HttpSession session) {
		carService.saveCar(car);
		model.addAttribute("newCar", car);
		model.addAttribute("welcome", "Thank You!");
		model.addAttribute("msg", "Thank you for being a valued customer with Car D's Place. <br>Your "
				+ car.getCarYear() + " " + car.getCarMake() + " " + car.getCarModel() + " is now up for sale.");

		return "thank-you";
	}

	@GetMapping("user-records")
	public String usersView(Model model) {
		model.addAttribute("account", customerService.findAll());
		model.addAttribute("sell", carService.findAllForSale());
		model.addAttribute("sold", carService.findAllSold());
		return "user-records";
	}

	@GetMapping("car-view")
	public String preCarView(Model model) {
		model.addAttribute("cars", carService.findAllForSale());
		return "car-view";
	}

	@PostMapping("car-view")
	public String carView(@ModelAttribute("car") Car car, Model model, HttpSession session) {
//		return new ModelAndView("car-view", "car", new Car());
//		List<Car> onMarket = carService.findAll();
//		for (Car c : onMarket) {
//			model.addAttribute("cars", c);
//			session.setAttribute("car", car);
//						if(session.getAttribute("car").equals(car)) {
//			return "car-view";
//		}
//		}
//			if(session.getAttribute(car.getCarVin()).) {
//				
//			}
		return "car-view";
	}

//	@PostMapping("car-view")
//	String viewDetails(@RequestParam int id, @RequestParam String password, Model model) {
//		
//		Car carDetails = carService.findById(id);
//		if(carDetails!=null) {
//			model.addAttribute("car", carDetails);
//			return "car-view";	
//		}else {
//			model.addAttribute("error", "No id");
//			return "login";
//		}
//	}

	@GetMapping("user-home")
	public String userHomePage(Model model) {
		model.addAttribute("cars", carService.findAllForSale());
		return "user-home";
	}

	@PostMapping("search")
	public String carSearch(@RequestParam String carMakeAndModel, @RequestParam String email, Model model) {
		model.addAttribute("cars", carService.searchMakeAndModel(carMakeAndModel));
		model.addAttribute("email", customerService.findByEmail(email));
		return "search";
	}

	@GetMapping("logout")
	String logout(@ModelAttribute("customer") Customer customer, Model model, HttpSession session) {

		request.getSession().removeAttribute("email");
		model.addAttribute("msg", "You have been logged out");

		return "login";
	}

}
