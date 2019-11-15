package org.courses.web.comand;

import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class HomeCommand implements Command {
    private static final String HOME_URL = "/ui/index.jsp";

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {

        return new Page(HOME_URL );
    }
}
