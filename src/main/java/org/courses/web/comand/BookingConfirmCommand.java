package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.FormServiceFactory;
import org.courses.model.Form;
import org.courses.services.ServiceType;
import org.courses.services.form.FormCreateService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class BookingConfirmCommand implements Command {
    private static final Logger LOG = Logger.getLogger(BookingConfirmCommand.class);
    public static final String SUCCESSFULLY = "navigation.bookingForm.status.successfully";
    public static final String ERROR = "navigation.bookingForm.status.not.successfully";
    private FormCreateService createService;

    {
        AbstractServiceFactory abstractServiceFactory = new FormServiceFactory();
        createService = (FormCreateService) abstractServiceFactory.getServiceFactory(ServiceType.CREATE_ENTITY_SERVICE);
    }

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession(false);
        Form form = (Form) session.getAttribute(AttributeName.FORM);
        if (form != null && form.getUser() != null && form.getReservation() != null) {
            if (createService.addedToDbEntity(form)) {
                LOG.info("Booking successfully " + form.getReservation() + " " + form.getReservation().getRoom());
                request.setAttribute(AttributeName.BOOKING_STATUS, SUCCESSFULLY);
            }
        }
        request.setAttribute(AttributeName.BOOKING_STATUS, ERROR);

        return new Page(PagePathConstant.HOME_URL, true);
    }
}
