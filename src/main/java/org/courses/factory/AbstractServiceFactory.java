package org.courses.factory;

import org.courses.services.ServiceType;
import org.courses.services.intefaces.Service;

public abstract class AbstractServiceFactory {
    abstract public Service getServiceFactory(ServiceType serviceType);

}
