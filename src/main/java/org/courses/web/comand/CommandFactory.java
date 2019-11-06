package org.courses.web.comand;

import java.util.HashMap;
import java.util.Map;

public class CommandFactory {

    static Map<String, Command> commandMap = new HashMap<>();

    static {
        commandMap.put("user", new UserCommand());
    }

   public static Command getCommand(String path) {
        return commandMap.get(path);

    }
}
