package models;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BeanTest {
    public static void main(String[] args) {
        List<Album> myPlaylist = new ArrayList<>();
        myPlaylist.add(new Album(1,"Whitney Houston / various artists","The Bodyguard",new Date(1992),28.7,"R&B, soul, pop, soundtrack"));
        myPlaylist.add(new Album(2,"Michael Jackson","Dangerous",new Date(1991),17,"New jack swing, R&B and pop"));
        myPlaylist.add(new Album(3,"Adele","21",new Date(2011),27.1,"Pop, soul"));

        Author adams = new Author(1, "Douglas", "Adams");
        Author twain = new Author(2, "Mark", "Twain");
        Author vonnegut = new Author(3, "Kurt", "Vonnegut");

        List<Quote> quotes = new ArrayList<>();
        quotes.add(new Quote(1, adams, "I love deadlines. I love the whooshing noise they make as they go by."));
        quotes.add(new Quote(2, adams, "Don't Panic."));
        quotes.add(new Quote(3, adams, "Time is an illusion. Lunchtime doubly so."));
        quotes.add(new Quote(4, twain, "Clothes make the man. Naked people have little or no influence on society."));
        quotes.add(new Quote(5, vonnegut, "The universe is a big place, perhaps the biggest."));

        for(Quote q : quotes){
            System.out.println(q.getContent() + "\n- " + q.getAuthor().getFirst_name() + " " + q.getAuthor().getLast_name() + "\n");
            q.getAuthor().getQuotes().add(q);
        }

        for(Quote q : adams.getQuotes()){
            System.out.println(adams.getName() + " once said: " + q.getContent());
        }
    }
}
