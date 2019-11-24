package org.courses.services.form;

import org.courses.dao.FormDao;
import org.courses.model.Entity;
import org.courses.model.Form;
import org.courses.services.intefaces.SelectEntityService;

import java.util.List;

public class FormSelectService implements SelectEntityService {
    private FormDao formDao = new FormDao();


    @Override
    public Entity getEntity(Entity entity) {
        return null;
    }

    @Override
    public List<? extends Entity> getAllEntity(Entity entity) {
        Form form = (Form) entity;

        return formDao.findFreeRoomsBetweenDateByRoomTypeAndAdults(form);

    }
}
