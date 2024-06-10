//package com.Education.LOGIN;
//
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.core.io.ByteArrayResource;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import com.Education.LOGIN.MODEL.User;
//import com.Education.LOGIN.MODEL.UserRepo;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.MediaType;
//import org.springframework.web.bind.annotation.PostMapping;
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//@Controller
//
//public class LoginController {
//	@Controller
//	public class ContactController {
//
////	    @PostMapping("/Contact")
////	    public String handleContactForm(@RequestParam String name,
////	                                    @RequestParam String email,
////	                                    @RequestParam String message) {
////	        // Add your logic to handle the form data (e.g., send an email, save to a database)
////	        // ...
////
////	        // Return the view name or redirect to another page
////	        return "contact-success"; // Assuming you have a "contact-success.jsp" page
////	    }
//	}
//
//	
//	
//	
//	
//	
//	
//	@Autowired
//	private UserRepo userRepo;
//
//	//private RestTemplate restTemplate = new RestTemplate();
//	@RequestMapping("/voter")
//	public String showVoterPage() {
//	    return "Votersgiven";
//	}
//
//	@RequestMapping("/contact")
//	public String showContact() {
//	    return "contact";
//	}
//
//
//	 
//	 @RequestMapping("/Support")
//	    public String showSupportPage() {
//	        return "Support"; // Assuming "Support.jsp" is in the "WEB-INF/views" directory
//	    }
//	 @GetMapping("/Contactinfo")
//	    public String showContactInfoPage() {
//	        return "Contactinfo"; // Assuming "Contactinfo.jsp" is located in the default view folder
//	    }
//	
//	@RequestMapping("/dash")
//	public String dashCheck() {
//		return "dashboard";
//	}
//	// Login page
//	@RequestMapping("/")
//	public String check() {
//		return "login";
//	}
//	
//	@PostMapping("/checcred")
//	public String dispmethod(@RequestParam("email") String email,@RequestParam("pass") String pass)
//	{
//		if(email.equals("akanksha@gmail.com") && pass.equals("1234"))
//		{
//			return "dashboard";
//		}
//		
//		 return "redirect:alogin";
//	}
//
//	@RequestMapping(value = "/givevote", method = RequestMethod.POST)
//	public String doPost(HttpServletRequest request, HttpServletResponse response, @RequestParam("candidateId") String candidateId){
//
//		System.out.print(candidateId);
//		String url = "jdbc:mysql://localhost:3306/meta?characterEncoding=utf-8";
//		String username = "root";
//		String password = "Akanksha@123";
//
//		try (Connection conn = DriverManager.getConnection(url, username, password)) {
//			// Update the vote count for the selected candidate
//			String sql = "UPDATE voter SET count = count + 1 WHERE candidate = ?";
//			try (PreparedStatement stmt = conn.prepareStatement(sql)) {
//				stmt.setString(1, candidateId);
//				stmt.executeUpdate();
//			}
//		} catch (SQLException ex) {
//			// Handle database connection errors
//			ex.printStackTrace();
////            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
//		}
//		return "success";
//	}
//
//	@RequestMapping("/VoterResult")
//	public String VoterResult() {
//		return "VoterResult";
//	}
//	
//	@RequestMapping("/checcred")
//	public String aloginn() {
//		return "alogin";
//	}
//
//	@RequestMapping("/alogin")
//	public String alogin() {
//		return "login";
//	}
//	// Homepage
//	@RequestMapping("/login")
//	public String loginHomepage(@RequestParam("userName") String userName,
//			@RequestParam("password") String password, Model model) {
//		
//		System.out.println(userName);
//		User u = null;
//		User p = null;
//		try {
//			u = userRepo.findByName(userName);																	
//			p = userRepo.findByPassword(password);
//		} catch (Exception e) {
//			System.out.println("User not found !!!");
//		}
//		if (u != null && p != null) {
//			model.addAttribute("USERNAME", userName);
//			//model.addAttribute("Password", password);
//			return "dashboard";
//		}
//		model.addAttribute("error", "User Not Found, Kindly meta!!");
//		return "login";
//	}
//
//	// Registration page
//	@GetMapping("/meta")
//	public String showRegistrationPage() {
//		return "meta";
//	}
//	   @PostMapping("/meta")
//	    public String metaUser(@RequestParam("userName") String userName,
//	                               @RequestParam("password1") String password1,
//	                               @RequestParam("password2") String password2,
//	                               Model model) {
//	        if (password1.equals(password2)) {
//	            User user = new User();
//	            user.setId(generateUniqueId());
//	            user.setName(userName);
//	            user.setPassword(password1);
//	            userRepo.save(user);
//	            model.addAttribute("metaSuccess", "Successfully metaed");
//	        } else {
//	            model.addAttribute("registrationError", "Passwords do not match !");
//	        }
//	        return "login";
//	    }
//	// Registration
//	@RequestMapping("/set-user")
//	public String goTometaMicroservice(@RequestParam("userName") String userName,
//			@RequestParam("password1") String password1,
//			@RequestParam("password2") String password2, Model model) {
//		if (password1.equals(password2)) {
//			//restTemplate.getForObject("http://localhost:8181/meta-user/{userName}/{password1}", String.class, userName, password1);
//			User u=new User();
//			u.setId(generateUniqueId());
//			u.setName(userName);
//			u.setPassword(password1);
//			userRepo.save(u);
//			model.addAttribute("metaSuccess", "Successfully metaed");
//		}
//		else {
//			model.addAttribute("registrationError", "Password not same !");
//			return "meta";
//		}
//		return "login";
//	}
//
//
//	private int userIdCounter = 1;
//	private int generateUniqueId() {
//		// Increment the counter and return the new value as the unique ID
//		return userIdCounter++;
//	}
//	@RequestMapping("/aboutus")
//    public String aboutUsPage() {
//        return "Aboutus"; // Assuming "AboutUs.jsp" is in the "WEB-INF/views" directory
//    }
//	@RequestMapping("/profile")
//    public String profile() {
//        return "profile"; // Assuming "AboutUs.jsp" is in the "WEB-INF/views" directory
//    }
//	@RequestMapping("/course")
//    public String course() {
//        return "Course"; // Assuming "AboutUs.jsp" is in the "WEB-INF/views" directory
//    }
//
//	@GetMapping("/index")
//    public String index() {
//        return "index";
//    }
//
//
//	    @GetMapping("/success")
//	    public String success() {
//	        return "success";
//	    }
//// meta page sathi
//
//	 // register page sathi 
//
//	    @PostMapping("/saveUser")
//	    public ModelAndView saveUser(@RequestParam("name") String name,
//	                                 @RequestParam("address") String address,
//	                                 @RequestParam("phone") String phone,
//	                                 @RequestParam("aadharCardNumber") String aadharCardNumber) {
//	        Connection connection = null;
//	        PreparedStatement preparedStatement = null;
//
//	        try {
//	            Class.forName("com.mysql.cj.jdbc.Driver");
//	            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/meta", "root", "Akanksha@123");
//
//	            String sql = "INSERT INTO users (name, address, phone, aadharCardNumber) VALUES (?, ?, ?, ?)";
//	            preparedStatement = connection.prepareStatement(sql);
//	            preparedStatement.setString(1, name);
//	            preparedStatement.setString(2, address);
//	            preparedStatement.setString(3, phone);
//	            preparedStatement.setString(4, aadharCardNumber);
//
//	            int rowsInserted = preparedStatement.executeUpdate();
//	            if (rowsInserted > 0) {
//	                return new ModelAndView("success");
//	            } else {
//	                return new ModelAndView("error");
//	            }
//	        } catch (SQLException | ClassNotFoundException e) {
//	            e.printStackTrace();
//	            return new ModelAndView("error");
//	        } finally {
//	            try {
//	                if (preparedStatement != null) preparedStatement.close();
//	                if (connection != null) connection.close();
//	            } catch (SQLException e) {
//	                e.printStackTrace();
//	            }
//	        }}
//	    
//	    
//
//	    
//	    
//	    
//	    
//	    
//       @PostMapping("/processFormContact")
//	    public String processForm(
//	            @RequestParam String name,
//	            @RequestParam String email,
//	            @RequestParam String message,
//	            Model model) {
//	        
//	        // You can perform additional processing/validation here
//	        // For simplicity, we're just printing the name, email, and message
//	        System.out.println("Received name: " + name);
//	        System.out.println("Received email: " + email);
//	        System.out.println("Received message: " + message);
//
//
//        // You can return a view name or redirect to another page
//	        return "Contactsuccess";
//    }
//	 
//	
//	}