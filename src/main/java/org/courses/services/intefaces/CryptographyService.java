package org.courses.services.intefaces;

public interface CryptographyService extends Service {
    String encryption(String encryptText);

    boolean matches(String textFromFrontEnd, String textFromDb);


}
