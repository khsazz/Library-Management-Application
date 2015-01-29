package com.seminar.one;

import com.seminar.one.model.Book;
import com.seminar.one.model.Issue;
import com.seminar.one.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Created by Sazz on 1/29/2015.
 */

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @PersistenceContext
    EntityManager em;

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView dashboard(ModelAndView model){
        model.setViewName("admindashboard");

        return model;
    }

    @RequestMapping(value = "/addNewBook", method = RequestMethod.GET)
    public ModelAndView addNewBook(ModelAndView model){
        model.setViewName("addnewbook");

        return model;
    }

    @Transactional
    @RequestMapping(value = "/saveNewBook", method = RequestMethod.POST)
    public String saveNewBook(@RequestParam("bookid")int bookId,
                                    @RequestParam("isbn")String isbn,
                                    @RequestParam("title")String title,
                                    @RequestParam("authors")String authors,
                                    @RequestParam("bookShelf")String bookShelf,
                                    @RequestParam("donor")String donor,
                                    @RequestParam("comment")String comment,
                                    @RequestParam("bookGroup")String bookGroup,
                                    @RequestParam("bookcover")MultipartFile file){

        Book book=new Book();
        book.setBookId(bookId);
        book.setIsbn(isbn);
        book.setTitle(title);
        book.setAuthors(authors);
        book.setBookShelf(bookShelf);
        book.setDonor(donor);
        book.setComment(comment);
        book.setBookGroup(bookGroup);
        if(!file.isEmpty()){
            try {
                book.setBookcover(file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        em.persist(book);
        return "redirect:/admin/dashboard";
    }


    @RequestMapping(value = "/addStudent", method = RequestMethod.GET)
    public ModelAndView addNewStudent(ModelAndView model){
        model.setViewName("addStudentForm");

        return model;
    }

    @Transactional
    @RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
    public String saveNewStudent(@ModelAttribute("studentForm")Student student){

        em.persist(student);
        return "redirect:/admin/dashboard";
    }


    @RequestMapping(value = "/issueBook", method = RequestMethod.GET)
    public ModelAndView issueBook(ModelAndView model){
        model.setViewName("issuebook");

        return model;
    }

    @Transactional
    @RequestMapping(value = "/saveIssue", method = RequestMethod.POST)
    public String saveIssue(@ModelAttribute("issueForm")Issue issue){

        Book book=em.find(Book.class, issue.getBookBookId());
        book.setAvailibility(false);
        em.persist(issue);
        em.persist(book);
        return "redirect:/admin/dashboard";
    }

    @RequestMapping(value = "/searchDueBook", method = RequestMethod.GET)
    public ModelAndView searchDueBook(ModelAndView model){
        model.setViewName("viewDueBooks");

        return model;
    }

    @Transactional
    @RequestMapping(value = "/dueBooks", method = RequestMethod.GET)
    public ModelAndView viewDueBook(ModelAndView model,
                                    @RequestParam("bookid")int id,
                                    @RequestParam("optionsRadios")String radio){
        model.setViewName("viewDueBooks");
        List<Issue> issueList=null;
        if(radio.equals("Book")){
            issueList=(List<Issue>)em.createQuery("SELECT i FROM Issue i WHERE i.bookBookId =:id")
                    .setParameter("id", id).getResultList();
        }else if(radio.equals("All")){
            issueList=(List<Issue>)em.createQuery("SELECT i FROM Issue i ").getResultList();
        }else{
            issueList=(List<Issue>)em.createQuery("SELECT i FROM Issue i WHERE i.studentRegNo =:id")
                    .setParameter("id", id).getResultList();
        }
        Date today = new Date();
        for(Issue i: issueList){
            long diff = today.getTime() - i.getExpireDate().getTime();
            int daysExceeded=(int)TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
            if(daysExceeded > 0){
                i.setDateExceeded(daysExceeded);
            }
            String bookName=(String)em.createQuery("SELECT b.title FROM Book b WHERE b.bookId =:bookid")
                    .setParameter("bookid", i.getBookBookId()).getSingleResult();
            i.setBookName(bookName);
        }

        model.addObject("issues", issueList);
        model.addObject("searchTerm", id);
        model.addObject("radio", radio);
        return model;
    }

    @Transactional
    @RequestMapping(value = "/redeemIssue", method = RequestMethod.GET)
    public String redeemIssue(@RequestParam("issueID")int id,
                                @RequestParam("searchTerm")String term,
                                @RequestParam("radio")String radio,
                                RedirectAttributes redir){

        Issue issue=em.find(Issue.class, id);
        Book book = em.find(Book.class, issue.getBookBookId());
        book.setAvailibility(true);
        em.remove(issue);
        em.persist(book);

        redir.addAttribute("bookid", term);
        redir.addAttribute("optionsRadios", radio);
        return "redirect:/admin/dueBooks";
    }

}
