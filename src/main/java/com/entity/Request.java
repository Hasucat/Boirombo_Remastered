package com.entity;

public class Request {
    private int requestId;
    private int userId;
    private String bookName;
    private String authorName;
    private String description;
    private String bookImage;
    private String requestDate;
    private String status;

    public Request() {
        super();
    }

    public Request(String bookName, String authorName, String description, String bookImage, String requestDate,
            String status) {
        super();
        this.bookName = bookName;
        this.authorName = authorName;
        this.description = description;
        this.bookImage = bookImage;
        this.requestDate = requestDate;
        this.status = status;

    }

    public Request(int userId, String bookName, String authorName,
            String description, String bookImage) {
        this(bookName, authorName, description, bookImage, null, "Pending");
        this.userId = userId;
    }

    // Getters and Setters
    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }

    public String getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(String requestDate) {
        this.requestDate = requestDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
