package com.jin.service;

import com.jin.dao.BookMapper;
import com.jin.entity.Book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    private BookMapper bookMapper;

    @Autowired
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public boolean add(Book book) {
        return bookMapper.add(book) > 0;
    }

    @Override
    public boolean deleteBookById(int id) {
        return bookMapper.deleteBookById(id) > 0;
    }

    @Override
    public boolean update(Book book) {
        return bookMapper.update(book) > 0;
    }

    @Override
    public Book getBookById(int id) {
        return bookMapper.getBookById(id);
    }

    @Override
    public List<Book> getAllBooks() {
        return bookMapper.getAllBooks();
    }

    @Override
    public List<Book> queryBookByName(String name) {
        return bookMapper.queryBookByName(name);
    }
}
