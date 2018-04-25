package salesproperty.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import salesproperty.model.MessageEntity;

import java.util.List;

@Repository
public class MessageDAO {
    private SessionFactory sessionFactory;

    private static final Logger logger = LoggerFactory.getLogger(MessageDAO.class);

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addMessage(MessageEntity messageEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(messageEntity);
        logger.info("MessageEntity successfully added. MessageEntity details: "+ messageEntity);
    }

    public void updateMessage(MessageEntity messageEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(messageEntity);
        logger.info("MessageEntity successfully updated. MessageEntity details: "+ messageEntity);
    }

    public void removeMessage(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        MessageEntity messageEntity =(MessageEntity) session.load(MessageEntity.class,new Integer(id));
        if (messageEntity !=null){
            session.delete(messageEntity);
        }
        logger.info("MessageEntity successfully removed. MessageEntity details: "+ messageEntity);
    }

    public MessageEntity getMessageById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        MessageEntity messageEntity =(MessageEntity) session.load(MessageEntity.class,new Integer(id));
        logger.info("MessageEntity successfully loaded. MessageEntity details: "+ messageEntity);
        return messageEntity;
    }

    @SuppressWarnings("unchecked")
    public List<MessageEntity> listMessages() {
        Session session = this.sessionFactory.getCurrentSession();
        List<MessageEntity> messageEntities = session.createQuery("from MessageEntity").list();
        for (MessageEntity messageEntity : messageEntities){
            logger.info("Messages list: "+ messageEntity);
        }
        return messageEntities;
    }
}
