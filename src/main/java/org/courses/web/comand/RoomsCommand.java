package org.courses.web.comand;

import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class RoomsCommand implements Command {

    private static final String SECTION_ROOMS_JSP = "/ui/section-rooms.jsp";

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        return new Page(SECTION_ROOMS_JSP);
    }
}
