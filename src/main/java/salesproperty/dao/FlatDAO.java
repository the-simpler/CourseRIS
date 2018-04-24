package salesproperty.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import salesproperty.model.FlatEntity;

import java.util.List;

@Repository
public class FlatDAO {
    private SessionFactory sessionFactory;

    private static final Logger logger = LoggerFactory.getLogger(FlatDAO.class);

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addFlat(FlatEntity flatEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(flatEntity);
        logger.info("FlatEntity successfully added. FlatEntity details: "+ flatEntity);
    }

    public void updateFlat(FlatEntity flatEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(flatEntity);
        logger.info("FlatEntity successfully updated. FlatEntity details: "+ flatEntity);
    }

    public void removeFlat(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        FlatEntity flatEntity =(FlatEntity) session.load(FlatEntity.class,new Integer(id));
        if (flatEntity !=null){
            session.delete(flatEntity);
        }
        logger.info("FlatEntity successfully removed. FlatEntity details: "+ flatEntity);
    }

    public FlatEntity getFlatById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        FlatEntity flatEntity =(FlatEntity) session.load(FlatEntity.class,new Integer(id));
        logger.info("FlatEntity successfully loaded. FlatEntity details: "+ flatEntity);
        return flatEntity;
    }

    @SuppressWarnings("unchecked")
    public List<FlatEntity> listFlats() {
        Session session = this.sessionFactory.getCurrentSession();
        List<FlatEntity> flatEntities = session.createQuery("from FlatEntity").list();
        for (FlatEntity flatEntity : flatEntities){
            logger.info("Flats list: "+ flatEntity);
        }
        return flatEntities;
    }
}
