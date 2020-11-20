package com.jin.dao;

import com.jin.entity.Book;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    int add(Book book);

    int deleteBookById(@Param("bookId") int id);

    int update(Book book);

    Book getBookById(@Param("bookId") int id);

    List<Book> getAllBooks();

    List<Book> queryBookByName(@Param("bookName") String name);
}
