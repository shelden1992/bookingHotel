package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LanguageCommand implements Command {
    public static final String LOCALE = "locale";
    private static final Logger LOG = Logger.getLogger(LanguageCommand.class);

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        String parameterLocal = request.getParameter(LOCALE);
        LOG.info("Locale NOW " + parameterLocal);
        request.getSession().setAttribute(LOCALE, parameterLocal);
        return new Page("/", true);

    }
}
