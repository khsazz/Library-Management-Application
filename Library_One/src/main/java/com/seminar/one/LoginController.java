package com.seminar.one;

import com.seminar.one.model.Book;
import com.seminar.one.model.Issue;
import com.seminar.one.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Controller
public class LoginController {

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "hello";
	}

    @RequestMapping(value = "/library/auth", method = RequestMethod.GET)
    public ModelAndView adminLogin(ModelAndView model) {
        model.setViewName("adminLogin");
        return model;
    }

    @RequestMapping(value = "/library/loginError", method = RequestMethod.GET)
    public ModelAndView loginError(ModelAndView model) {
        model.setViewName("loginError");
        return model;
    }

    @RequestMapping(value = "/library/error", method = RequestMethod.GET)
    public ModelAndView error(ModelAndView model) {
        model.setViewName("error");
        return model;
    }

}