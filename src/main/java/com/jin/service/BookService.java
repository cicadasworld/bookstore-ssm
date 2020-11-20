package com.jin.service;

import com.jin.entity.Book;

import java.util.List;

public interface BookService {

    boolean add(Book book);

    boolean deleteBookById(int id);

    boolean update(Book book);

    Book getBookById(int id);

    List<Book> getAllBooks();

    List<Book> queryBookByName(String name);
}
