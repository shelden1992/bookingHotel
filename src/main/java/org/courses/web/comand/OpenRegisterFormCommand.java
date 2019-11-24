package org.courses.web.comand;

import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.model.Form;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class OpenRegisterFormCommand implements Command {


    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        Form formFromAttribute = (Form) request.getSession(false).getAttribute(AttributeName.FORM);
        if (formFromAttribute != null && formFromAttribute.getUser() != null) {
            return new Page(PagePathConstant.HOME_URL);
        }
        return new Page(PagePathConstant.UI_PAGES_REGISTER_FORM_JSP);
    }
}
