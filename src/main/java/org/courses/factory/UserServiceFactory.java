package org.courses.factory;

import org.courses.services.ServiceType;
import org.courses.services.intefaces.Service;
import org.courses.services.userServices.*;

import java.util.HashMap;
import java.util.Map;

public class UserServiceFactory extends AbstractServiceFactory {
    private static Map<ServiceType, Service> factoryMap = new HashMap<>();

    static {
        factoryMap.put(ServiceType.CRYPTOGRAPHY_SERVICE, new UserCryptographyService());
        factoryMap.put(ServiceType.CHECK_EXIST_SERVICE, new UserCheckExistService());
        factoryMap.put(ServiceType.CREATE_ENTITY_SERVICE, new UserCreateService());
        factoryMap.put(ServiceType.SELECT_ENTITY_SERVICE, new UserSelectService());
        factoryMap.put(ServiceType.VALID_DATA_SERVICE, new UserValidData());
    }

    public Service getServiceFactory(ServiceType serviceType) {
        return factoryMap.get(serviceType);
    }
}
