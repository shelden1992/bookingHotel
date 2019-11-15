package org.courses.web.filter;

import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(value = "/*")
public class StaticResourceFilter implements Filter {
    private static final Logger LOG = Logger.getLogger(StaticResourceFilter.class);
    private static final String RESOURCES_PATH = "/resources/";
    private static final String UI_PATH = "/ui/";
    private static final String APP_PATH = "/app";

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        LOG.info("Do service, URI: " + httpRequest.getRequestURI());
        String referencePath = httpRequest.getRequestURI().substring(httpRequest.getContextPath().length());
        LOG.info("Reference path = " + referencePath);

        if (shouldBeSkipped(referencePath)) {
            LOG.info("STATIC resources path to " + referencePath);
            chain.doFilter(request, response);
            return;
        } else {
            String pathToForward = APP_PATH + referencePath;
            LOG.info("NOT STATIC resources. Forward to " + pathToForward);
            httpRequest.getRequestDispatcher(pathToForward).forward(request, response);

        }


    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void destroy() {

    }

    private boolean shouldBeSkipped(String path) {
        return path.startsWith(RESOURCES_PATH) || path.startsWith(UI_PATH) || path.startsWith(APP_PATH);
    }

}
