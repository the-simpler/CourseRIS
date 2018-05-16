package salesproperty.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import salesproperty.model.RequestEntity;

import java.util.List;

@Repository
public class RequestDAO {
    private SessionFactory sessionFactory;

    private static final Logger logger = LoggerFactory.getLogger(RequestDAO.class);

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addRequest(RequestEntity requestEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(requestEntity);
        logger.info("RequestEntity successfully added. RequestEntity details: "+ requestEntity);
    }

    public void updateRequest(RequestEntity requestEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(requestEntity);
        logger.info("RequestEntity successfully updated. RequestEntity details: "+ requestEntity);
    }

    public void removeRequest(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        RequestEntity requestEntity =(RequestEntity) session.load(RequestEntity.class,new Integer(id));
        if (requestEntity !=null){
            session.delete(requestEntity);
        }
        logger.info("RequestEntity successfully removed. RequestEntity details: "+ requestEntity);
    }

    public RequestEntity getRequestById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        RequestEntity requestEntity =(RequestEntity) session.load(RequestEntity.class,new Integer(id));
        logger.info("RequestEntity successfully loaded. RequestEntity details: "+ requestEntity);
        return requestEntity;
    }

    @SuppressWarnings("unchecked")
    public List<RequestEntity> listRequests() {
        Session session = this.sessionFactory.getCurrentSession();
        List<RequestEntity> requestEntities = session.createQuery("from RequestEntity").list();
        for (RequestEntity requestEntity : requestEntities){
            logger.info("Requests list: "+ requestEntity);
        }
        return requestEntities;
    }
}
