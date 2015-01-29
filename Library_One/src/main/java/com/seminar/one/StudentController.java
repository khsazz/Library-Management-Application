package com.seminar.one;

import com.seminar.one.model.Book;
import com.sun.org.apache.xml.internal.security.utils.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Sazz on 1/28/2015.
 */
@Controller
public class StudentController {

    @PersistenceContext
    EntityManager em;

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public ModelAndView studentLanding(ModelAndView model){
        model.setViewName("studentLanding");

        return model;
    }

    @RequestMapping(value = "/browseLibrary", method = RequestMethod.GET)
    public ModelAndView browseLibrary(ModelAndView model){
        model.setViewName("searchBooks");

        return model;
    }

    @Transactional
    @RequestMapping(value = "/searchLibrary", method = RequestMethod.GET)
    public ModelAndView searchLibrary(ModelAndView model,
                                      @RequestParam("term")String term,
                                      @RequestParam("optionsRadios")String radio){
        model.setViewName("searchBooks");
        String searchTerm=term;
        term = "%"+term+"%";

        List<Book> bookList = null;
        if(radio.equals("Book")){
            bookList = (List<Book>)em.createQuery("SELECT b FROM Book b WHERE b.title LIKE :term ")
                    .setParameter("term", term).getResultList();
        }else{
            bookList = (List<Book>)em.createQuery("SELECT b FROM Book b WHERE b.authors LIKE :term ")
                    .setParameter("term", term).getResultList();
        }
        model.addObject("books", bookList);
        model.addObject("term", searchTerm);
        return model;
    }

    @Transactional
    @RequestMapping(value = "/bookDetails/{bookid}", method = RequestMethod.GET)
    public ModelAndView bookDetails(ModelAndView model, @PathVariable("bookid")int bookid){
        model.setViewName("bookDetails");

        Book book = em.find(Book.class, bookid);
        String encodeBase64 = Base64.encode(book.getBookcover());
        book.setEncodedImage(encodeBase64);
        model.addObject("book", book);

        return model;
    }
}
