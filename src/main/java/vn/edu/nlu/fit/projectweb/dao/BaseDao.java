package vn.edu.nlu.fit.projectweb.dao;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

public abstract class BaseDao {
    private Jdbi jdbi;
    protected Jdbi get() {
        if(jdbi == null) {
            makeConnect();
        }
        return jdbi;
    }
    private void makeConnect() {
        MysqlDataSource src = new MysqlDataSource();
        String url = "jdbc:mysql://" + DBPProperties.host() + ":" + DBPProperties.port() +"/" + DBPProperties.name()+"?"+DBPProperties.option();
        src.setURL(url);
        src.setUser(DBPProperties.username());
        src.setPassword(DBPProperties.password());

        try{
            src.setUseCompression(true);
            src.setAutoReconnect(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        jdbi = jdbi.create(src);
    }

}
