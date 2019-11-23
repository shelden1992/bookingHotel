package org.courses.factory;

import org.courses.services.ServiceType;
import org.courses.services.intefaces.Service;
import org.courses.services.reservationServices.DateProcessingServiceImpl;
import org.courses.services.reservationServices.RoomSelectService;

import java.util.HashMap;
import java.util.Map;

public class ReservationServiceFactory extends AbstractServiceFactory {
    private static Map<ServiceType, Service> factoryMap = new HashMap<>();

    static {
        factoryMap.put(ServiceType.DATE_PROCESSING_SERVICE, new DateProcessingServiceImpl());
        factoryMap.put(ServiceType.SELECT_ENTITY_SERVICE, new RoomSelectService());

    }

    @Override
    public Service getServiceFactory(ServiceType serviceType) {
        return factoryMap.get(serviceType);
    }
}
