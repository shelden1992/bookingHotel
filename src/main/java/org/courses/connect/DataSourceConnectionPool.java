package org.courses.connect;

import org.apache.log4j.Logger;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import static java.util.Objects.nonNull;

public class DataSourceConnectionPool {
    private static final Logger LOG = Logger.getLogger(DataSourceConnectionPool.class);
    private static DataSource dataSource;

    static {
        Properties properties = new Properties();
        try {
            Context initContext = new InitialContext();
            dataSource = (DataSource) initContext.lookup("java:/comp/env/jdbc/booking_hotel");
//

        } catch (NamingException e) {
            LOG.error("Exception with JNDI ", e);
        }
    }

    private DataSourceConnectionPool() {
    }

    public static Connection getConnection() {
        Connection connection = null;
        try {
            if (nonNull(dataSource)) {
                connection = dataSource.getConnection();
            } else
                throw new IOException("DataSource null");
        } catch (SQLException | IOException e) {
            LOG.error("Exception connection create ", e);
        }
        return connection;

    }

    public static PreparedStatement getPreparedStatement(String query) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = getConnection().prepareStatement(query);
        } catch (SQLException e) {
            LOG.error("Exception while addedToDbEntity PreparedStatement", e);
        }
        return preparedStatement;

    }


}
