package org.courses.web;

import org.apache.log4j.Logger;
import org.courses.web.comand.Command;
import org.courses.web.comand.CommandFactory;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(value = "/app/*")
public class DispatcherServlet extends HttpServlet {
    private static final Logger LOG = Logger.getLogger(DispatcherServlet.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = getRelativePath(req);
        Command command = CommandFactory.getCommand(path, req.getMethod());
        Page page = command.perform(req);
        if (page.isRedirect()) {
            LOG.info("Page is redirect to " + req.getContextPath() + page.getUrl());
            resp.sendRedirect(req.getContextPath() + page.getUrl());
        } else {
            LOG.info("Page is forward to " + page.getUrl());
            req.getRequestDispatcher(page.getUrl()).forward(req, resp);
        }
    }

    private String getRelativePath(HttpServletRequest req) {
        String requestURI = req.getRequestURI();
        int lastPath = requestURI.lastIndexOf("/");
        String substring = requestURI.substring(lastPath);
        LOG.info("Relative path " + substring);
        return substring;
    }
}
