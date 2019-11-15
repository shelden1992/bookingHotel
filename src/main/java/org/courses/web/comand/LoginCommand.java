package org.courses.web.comand;

import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LoginCommand implements Command {

    private static final String UI_LOGIN_JSP = "/ui/login.jsp";

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        return new Page(UI_LOGIN_JSP);
    }
}
