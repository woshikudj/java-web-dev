package com.web;

/**
 * @author woshikudj
 * @ClassName IndexServlet
 * @Description TODO
 * @Date 2019/9/28
 * @Version 1.0
 **/
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Book[] books={
                new Book("好人平安", "11.jpg", "若风95"),
                new Book("国民奇人", "12.jpg", "茶叔"),
                new Book("万顾剑帝", "13.jpg", "淡味冰激凌"),
                new Book("红日之孤军", "14.jpg", "二目"),
                new Book("解忧杂货铺", "15.jpg", "猫腻"),
                new Book("个体崛起", "16.jpg", "若风95"),
                new Book("追风筝的人", "17.jpg", "茶叔"),
                new Book("天才向左,疯子向右", "18.jpg", "淡味冰激凌"),
                new Book("人类简史", "19.jpg", "二目"),
                new Book("大江大河", "20.jpg", "猫腻")

        };
        List<Book> bookList =(List<Book>) Arrays.asList(books);
        req.setAttribute("bookList",bookList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}

