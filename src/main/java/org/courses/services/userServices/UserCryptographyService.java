package org.courses.services.userServices;

import org.courses.services.CryptographyService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class UserCryptographyService implements CryptographyService {
    private static final BCryptPasswordEncoder B_CRYPT_PASSWORD_ENCODER = new BCryptPasswordEncoder(16);

    @Override
    public String encryption(String password) {
        if (password==null){
            return "";
        }

        return B_CRYPT_PASSWORD_ENCODER.encode(password);

    }

    @Override
    public boolean matches(String textFromFrontEnd, String textFromDb) {
        if (textFromFrontEnd==null || textFromDb==null){
            return false;
        }


        return B_CRYPT_PASSWORD_ENCODER.matches(textFromFrontEnd, textFromDb);
    }

}
