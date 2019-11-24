package org.courses.factory;

import org.courses.services.ServiceType;
import org.courses.services.intefaces.Service;
import org.courses.services.roonServices.RoomSelectServices;

import java.util.HashMap;
import java.util.Map;

public class FormServiceFactory extends AbstractServiceFactory {
    private static Map<ServiceType, Service> factoryMap = new HashMap<>();

    static {
        factoryMap.put(ServiceType.SELECT_ENTITY_SERVICE, new RoomSelectServices());

    }

    @Override
    public Service getServiceFactory(ServiceType serviceType) {
        return factoryMap.get(serviceType);
    }
}
