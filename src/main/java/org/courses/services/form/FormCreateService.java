package org.courses.services.form;

import org.courses.dao.FormDao;
import org.courses.model.Entity;
import org.courses.model.Form;
import org.courses.services.intefaces.CreateEntityService;

public class FormCreateService implements CreateEntityService {
    private FormDao formDao = new FormDao();

    @Override
    public boolean addedToDbEntity(Entity entity) {
        Form form = (Form) entity;

        return formDao.create(form);
    }
}
