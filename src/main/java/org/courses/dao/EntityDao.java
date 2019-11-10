package org.courses.dao;

import java.util.List;

public interface EntityDao<T> {
    List<T> getAll();

    T getById(int id);

    boolean create(T entity);

    boolean update(T entity);

    boolean remove(int id);
}
