package org.courses.web.comand;

import org.courses.dao.UserDao;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class UserCommand implements Command {
    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        UserDao userDao = new UserDao();
        long count = userDao.getAll().stream().count();
        request.setAttribute("count", count);
//        request.getRequestDispatcher("/homePage.jsp").forward(request, response);

//        writer1.println(count);
        return null;
    }
}
