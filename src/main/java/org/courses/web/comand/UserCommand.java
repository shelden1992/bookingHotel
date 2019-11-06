package org.courses.web.comand;

import org.courses.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserCommand implements Command {
    @Override
    public void perform(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UserDao userDao = new UserDao();
        long count = userDao.getAll().stream().count();
        request.setAttribute("count", count);
        request.getRequestDispatcher("/users.jsp").forward(request, response);

//        writer1.println(count);

    }
}
