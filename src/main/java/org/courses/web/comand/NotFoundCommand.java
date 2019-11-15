package org.courses.web.comand;

import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class NotFoundCommand implements Command {

    private static final String NOT_FOUND_PAGE = "/ui/404.html";

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        return new Page(NOT_FOUND_PAGE, true);
    }
}
