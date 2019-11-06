package org.courses.web.comand;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface Command {
    void perform(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException;
}
