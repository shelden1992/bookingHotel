package org.courses.web.comand;

import org.courses.constant.PagePathConstant;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class OpenLoginFormCommand implements Command {
    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        return new Page(PagePathConstant.UI_PAGES_LOGIN_FORM_JSP);
    }
}
