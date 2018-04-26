package salesproperty.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import salesproperty.model.UserEntity;

import java.util.List;

@Repository
public class UserDAO {
    private SessionFactory sessionFactory;

    private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addUser(UserEntity userEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(userEntity);
        logger.info("UserEntity successfully added. UserEntity details: "+ userEntity);
    }

    public void updateUser(UserEntity userEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(userEntity);
        logger.info("UserEntity successfully updated. UserEntity details: "+ userEntity);
    }

    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        UserEntity userEntity =(UserEntity) session.load(UserEntity.class,new Integer(id));
        if (userEntity !=null){
            session.delete(userEntity);
        }
        logger.info("UserEntity successfully removed. UserEntity details: "+ userEntity);
    }

    public UserEntity getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        UserEntity userEntity =(UserEntity) session.load(UserEntity.class,new Integer(id));
        logger.info("UserEntity successfully loaded. UserEntity details: "+ userEntity);
        return userEntity;
    }

    @SuppressWarnings("unchecked")
    public List<UserEntity> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<UserEntity> userEntities = session.createQuery("from UserEntity").list();
        for (UserEntity userEntity : userEntities){
            logger.info("Users list: "+ userEntity);
        }
        return userEntities;
    }
}
