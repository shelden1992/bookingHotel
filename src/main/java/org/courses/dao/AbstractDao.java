package org.courses.dao;


import org.apache.log4j.Logger;
import org.courses.connect.DataSourceFactory;
import org.courses.dao.mapper.EntityMapper;
import org.courses.dao.mapper.StatementMapper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractDao<T> implements EntityDao<T> {
    private static final Logger LOG = Logger.getLogger(AbstractDao.class);

    protected List<T> getAll(String query, EntityMapper<T> entityMapper) {
        List<T> entityList = new ArrayList<>();
        try (PreparedStatement preparedStatement = DataSourceFactory.getPreparedStatement(query)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                entityList.add(entityMapper.map(resultSet));
            }
        } catch (SQLException e) {
            LOG.error("Exception while getting all model", e);
        }
        return entityList;
    }

    protected boolean createUpdate(String query, StatementMapper<T> statementMapper) {
        int i = 0;
        try (PreparedStatement preparedStatement = DataSourceFactory.getPreparedStatement(query)) {
            statementMapper.map(preparedStatement);
            i = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            LOG.error("Exception while create model", e);
        }
        return i != 0;
    }

    protected T getEntityWithCondition(String query, StatementMapper<T> statementMapper, EntityMapper<T> mapper) {
        T getEntity = null;
        try (PreparedStatement preparedStatement = DataSourceFactory.getPreparedStatement(query)) {
            statementMapper.map(preparedStatement);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    getEntity = mapper.map(resultSet);
                }
            }
        } catch (SQLException e) {
            LOG.error("Exception while create entity");
            e.printStackTrace();
        }
        return getEntity;
    }

    protected List<T> getListEntityWithCondition(String query, StatementMapper<T> statementMapper, EntityMapper<T> mapper) {
        List<T> listEntity = new ArrayList<>();
        try (PreparedStatement preparedStatement = DataSourceFactory.getPreparedStatement(query)) {
            statementMapper.map(preparedStatement);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    listEntity.add(mapper.map(resultSet));
                    System.out.println();
                }
            }
        } catch (SQLException e) {
            LOG.error("Exception while create entity");
            e.printStackTrace();
        }
        return listEntity;
    }


}
