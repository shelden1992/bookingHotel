package org.courses.web.comand;

import org.courses.constant.PagePathConstant;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class NotFoundCommand implements Command {


    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        return new Page(PagePathConstant.NOT_FOUND_PAGE, true);
    }
}
