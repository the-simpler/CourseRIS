package salesproperty.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import salesproperty.model.Flat;

import java.util.List;

@Repository
public class FlatDAO {
    private SessionFactory sessionFactory;

    private static final Logger logger = LoggerFactory.getLogger(FlatDAO.class);

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addFlat(Flat flat) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(flat);
        logger.info("Flat successfully added. Flat details: "+flat);
    }

    public void updateFlat(Flat flat) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(flat);
        logger.info("Flat successfully updated. Flat details: "+flat);
    }

    public void removeFlat(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Flat flat =(Flat) session.load(Flat.class,new Integer(id));
        if (flat!=null){
            session.delete(flat);
        }
        logger.info("Flat successfully removed. Flat details: "+flat);
    }

    public Flat getFlatById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Flat flat =(Flat) session.load(Flat.class,new Integer(id));
        logger.info("Book successfully loaded. Book details: "+flat);
        return flat;
    }

    @SuppressWarnings("unchecked")
    public List<Flat> listFlats() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Flat> flats = session.createQuery("from Flat").list();
        for (Flat flat: flats){
            logger.info("Flats list: "+flat);
        }
        return flats;
    }
}
