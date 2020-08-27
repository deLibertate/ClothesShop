package ua.nure.danylenko.epam.db.service;

import ua.nure.danylenko.epam.db.dao.ItemsDao;
import ua.nure.danylenko.epam.exception.DBException;

public class ItemsService implements IService {

    @Override
    public ItemsDao getDao() {
        return new ItemsDao();
    }

    @Override
    public Object read() throws DBException {
        return null;
    }
}
