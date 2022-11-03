package models;

import java.io.Serializable;

public class Quote implements Serializable {
    // Variables
    private int id;
    private Author author;
    private String content;

    // Constructors
    public Quote(){};
    public Quote(int id, Author author, String content) {
        this.id = id;
        this.author = author;
        this.content = content;
    }

    // Methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
