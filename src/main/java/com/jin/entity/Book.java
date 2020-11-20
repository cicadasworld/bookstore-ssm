package com.jin.entity;

import lombok.Data;

@Data
public class Book {
    private int bookId;
    private String bookName;
    private int quantity;
    private String detail;
}
