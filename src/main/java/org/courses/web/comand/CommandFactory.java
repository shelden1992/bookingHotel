package org.courses.web.comand;

import org.apache.log4j.Logger;

import java.util.HashMap;
import java.util.Map;

import static java.util.Objects.nonNull;

public class CommandFactory {
    private static final Logger LOG = Logger.getLogger(CommandFactory.class);
    private static Map<String, Command> getCommandMap = new HashMap<>();
    private static Map<String, Command> postCommandMap = new HashMap<>();
    private static Command defaultCommand = new NotFoundCommand();


    static {
        getCommandMap.put("/404", defaultCommand);
        getCommandMap.put("/user", new UserCommand());
        getCommandMap.put("/", new HomeCommand());
        getCommandMap.put("/selection-rooms", new RoomsCommand());
        getCommandMap.put("/privacy", new PrivacyPolicyCommand());
        getCommandMap.put("/event", new EventCommand());
        getCommandMap.put("/team", new TeamCommand());
        getCommandMap.put("/language", new LanguageCommand());
        getCommandMap.put("/gallery", new GalleryCommand());
//        getCommandMap.put("/login", new LoginCommand());


        postCommandMap.put("/", new HomeCommand());
        postCommandMap.put("/login", new LoginCommand());
    }

    public static Command getCommand(String path, String method) {
        return isGetMethod(method) ? getCommand(path) : postCommand(path);
    }

    private static Command postCommand(String path) {
        Command command = (postCommandMap.get(path));
        LOG.info(String.format("POST command %s for path %s", command, path));
        return nonNull(command) ? command : defaultCommand;
    }

    private static boolean isGetMethod(String method) {
        return "GET".equals(method);
    }

    private static Command getCommand(String path) {
        Command command = (getCommandMap.get(path));
        LOG.info(String.format("GET command %s for path %s", command, path));
        Command command1 = nonNull(command) ? command : defaultCommand;
        System.out.println(command1);
        return command1;

    }
}
