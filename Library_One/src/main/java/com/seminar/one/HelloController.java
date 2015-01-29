package com.seminar.one;

import com.seminar.one.model.Book;
import com.seminar.one.model.Issue;
import com.seminar.one.model.Student;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

//@Controller
public class HelloController {

    @PersistenceContext
    EntityManager em;

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "hello";
	}

    @Transactional
    @RequestMapping(value = "/rowadded", method =RequestMethod.POST)
    public ModelAndView rowAdded(@ModelAttribute("studentModel")Student student){
        ModelAndView model = new ModelAndView("rowadded");

//
//        em.persist(student);
        model.addObject("obj", student);
        System.out.println("Student added");

        Book book = new Book();
        book.setBookId(5);
        book.setTitle("PHP");
        System.out.println("Book added");

//        em.persist(book);

        Issue issue = new Issue();
        System.out.println("Issue object created");
        issue.setStudentRegNo(student.getStudentid());
        issue.setBookBookId(book.getBookId());

        em.persist(issue);
        System.out.println("All done");


        return model;
    }
}