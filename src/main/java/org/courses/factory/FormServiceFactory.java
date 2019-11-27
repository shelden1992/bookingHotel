package org.courses.factory;

import org.courses.services.ServiceType;
import org.courses.services.form.FormCreateService;
import org.courses.services.intefaces.Service;

import java.util.HashMap;
import java.util.Map;

public class FormServiceFactory extends AbstractServiceFactory {
    private static Map<ServiceType, Service> factoryMap = new HashMap<>();

    static {
        factoryMap.put(ServiceType.CREATE_ENTITY_SERVICE, new FormCreateService());

    }

    @Override
    public Service getServiceFactory(ServiceType serviceType) {
        return factoryMap.get(serviceType);
    }
}
