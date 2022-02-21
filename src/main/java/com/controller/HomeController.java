package com.controller;

import java.net.http.HttpResponse;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.controller.entity.Products;
import com.controller.entity.User;
import com.dao.UserDao;
import com.dao.productDao;

@Controller
public class HomeController {

	@Autowired
	UserDao dao;

	@Autowired
	productDao productDao;

	

	@RequestMapping("/")
	public ModelAndView home(Model model, HttpSession session, HttpServletResponse res) {
		res.setHeader("Pragma", "No-cache");
		res.setHeader("Cache-Control", "no-cache");
		res.setDateHeader("Expires", 0);

		String title = "home";
		model.addAttribute("title", title);
		session.getAttribute("user");
		ModelAndView modelAndView = new ModelAndView("index");		

		return modelAndView;

	}

	@RequestMapping("/login")
	public ModelAndView login(Model model, HttpSession session, HttpServletResponse res) {
		res.setHeader("Pragma", "No-cache");
		res.setHeader("Cache-Control", "no-cache");
		res.setDateHeader("Expires", 0);

		ModelAndView modelAndView = new ModelAndView("login");
		String title = "Login";
		model.addAttribute("title", title);

		if (session.getAttribute("user") != null) {

			return new ModelAndView("index");
		} else {

			return modelAndView;

		}

	}

	@RequestMapping(value = "/loginhandle", method = RequestMethod.POST)
	public String validateUsr(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session, Model model, @ModelAttribute User user, HttpServletResponse res) {

		try {
			res.setHeader("Pragma", "No-cache");
			res.setHeader("Cache-Control", "no-cache");
			res.setDateHeader("Expires", 0);

			User userLogin = new User();
			userLogin.setEmail(email);
			userLogin.setPassword(password);

			String login = dao.loginUser(userLogin);
			System.out.println(login);

			if (login == null) {

				return "redirect:/login";
			} else {

				session.setAttribute("user", email);
				session.setMaxInactiveInterval(2 * 60);
			}

		} catch (Exception e) {

			System.out.println("error in login" + e);
		}

		return "redirect:/";
	}

	@RequestMapping("/signup")
	public ModelAndView signup(Model model, HttpServletResponse res) {
		res.setHeader("Pragma", "No-cache");
		res.setHeader("Cache-Control", "no-cache");
		res.setDateHeader("Expires", 0);
		String title = "Signup";
		model.addAttribute("title", title);
		ModelAndView modelAndView = new ModelAndView("signup");
		return modelAndView;
	}

	@RequestMapping(value = "/signuphandle", method = RequestMethod.POST)
	public String signuphandle(Model model, @RequestParam("email") String email,
			@RequestParam("password") String password, HttpServletResponse res, HttpServletRequest request) {

		res.setHeader("Pragma", "No-cache");
		res.setHeader("Cache-Control", "no-cache");
		res.setDateHeader("Expires", 0);
		try {

			User user = new User();
			user.setEmail(email);
			user.setPassword(password);

			int counter = dao.save(user);

			if (counter > 0) {

				System.out.println("User add successfully");

			}

		} catch (Exception e) {

			System.out.println("error in signup" + e);

		}
		return "redirect:/login";
	}

	@RequestMapping("/logout")
	public String logout(Model model, HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		res.setHeader("Pragma", "No-cache");
		res.setHeader("Cache-Control", "no-cache");
		res.setDateHeader("Expires", 0);

		session.getAttribute("user");
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/product")
	public ModelAndView products(Model model, HttpSession session, HttpServletResponse res) {
		res.setHeader("Pragma", "No-cache");
		res.setHeader("Cache-Control", "no-cache");
		res.setDateHeader("Expires", 0);

		String title = "Products";
		model.addAttribute("title", title);

		List<Products> products = productDao.getProductList();
		System.out.println(products);
		model.addAttribute("products", products);

		if (session.getAttribute("user") != null) {

			return new ModelAndView("cart");

		} else {

			return new ModelAndView("login");

		}

	}

	
}
