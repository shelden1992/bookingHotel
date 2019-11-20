package org.courses.services;

public interface CryptographyService {
    String encryption(String encryptText);
    boolean matches (String textFromFrontEnd, String textFromDb);


}
