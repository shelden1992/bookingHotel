package org.courses.web;

import org.courses.dao.UserDao;
import org.courses.web.comand.Command;
import org.courses.web.comand.CommandFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(value = "/app/*")
public class UserServlet extends HttpServlet {
    private
    static UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestURI = req.getRequestURI();
        int i = requestURI.lastIndexOf("/");
        String substring = requestURI.substring(i + 1);
        Command userCommand = CommandFactory.getCommand(substring);
        userCommand.perform(req, resp);

    }
}
