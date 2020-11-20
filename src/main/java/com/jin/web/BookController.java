package com.jin.web;

import com.jin.entity.Book;
import com.jin.service.BookService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    private BookService bookService;

    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping("/list")
    public String listAll(Model model) {
        List<Book> allBooks = bookService.getAllBooks();
        model.addAttribute("list", allBooks);
        return "list";
    }

    @RequestMapping("/toAddBookPage")
    public String toAddBookPage() {
        return "add-book";
    }

    @RequestMapping("/addBook")
    public String addBook(Book book) {
        bookService.add(book);
        return "redirect:/book/list";
    }

    @RequestMapping("/toUpdatePage")
    public String toUpdatePage(int id, Model model) {
        Book book = bookService.getBookById(id);
        model.addAttribute("aBook", book);
        return "update-book";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Book book) {
        bookService.update(book);
        return "redirect:/book/list";
    }

    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/list";
    }

    @RequestMapping("/queryBook")
    public String queryBook(@RequestParam("bookName") String name, Model model) {
        List<Book> books = bookService.queryBookByName(name);
        model.addAttribute("list", books);
        return "list";
    }

}
