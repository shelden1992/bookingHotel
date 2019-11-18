package org.courses.web.filter;

import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LocalizationCookiesFilter implements Filter {
    private static final Logger LOG = Logger.getLogger(LocalizationCookiesFilter.class);
    private static final String LOCALE_ATTR = "locale";
    private static final String BUNDLE_ATTR = "bundle";

    private String defaultLocale;
    private String defaultBundle;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.defaultLocale = filterConfig.getInitParameter("locale");
        this.defaultBundle = filterConfig.getInitParameter("bundle");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = httpServletRequest.getSession();


        setLocalToSession(session);
        setBundleToSession(session);
        chain.doFilter(request, response);
        return;
    }

    private void setBundleToSession(HttpSession session) {

        String attribute = (String) session.getAttribute(BUNDLE_ATTR);
        if (attribute == null) {
            LOG.info("No BUNDLE attribute in session. Send default bundle");
            session.setAttribute(BUNDLE_ATTR, defaultBundle);
        } else {
            LOG.info("BUNDLE attribute ALREADY in session. " + attribute);
        }

    }

    private void setLocalToSession(HttpSession session) {
        String attribute = (String) session.getAttribute(LOCALE_ATTR);
        if (attribute == null) {
            LOG.info("No LOCALE attribute in session. Send default locale");
            session.setAttribute(LOCALE_ATTR, defaultLocale);
        } else {
            LOG.info("LOCALE attribute ALREADY in session. " + attribute);
        }

    }


    @Override
    public void destroy() {

    }

}
