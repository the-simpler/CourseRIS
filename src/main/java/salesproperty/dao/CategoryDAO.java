package salesproperty.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import salesproperty.model.CategoryEntity;

import java.util.List;

public class CategoryDAO {
    private SessionFactory sessionFactory;

    private static final Logger logger = LoggerFactory.getLogger(CategoryDAO.class);

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addCategory(CategoryEntity categoryEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(categoryEntity);
        logger.info("CategoryEntity successfully added. CategoryEntity details: "+ categoryEntity);
    }

    public void updateCategory(CategoryEntity categoryEntity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(categoryEntity);
        logger.info("CategoryEntity successfully updated. CategoryEntity details: "+ categoryEntity);
    }

    public void removeCategory(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        CategoryEntity categoryEntity =(CategoryEntity) session.load(CategoryEntity.class,new Integer(id));
        if (categoryEntity !=null){
            session.delete(categoryEntity);
        }
        logger.info("CategoryEntity successfully removed. CategoryEntity details: "+ categoryEntity);
    }

    public CategoryEntity getCategoryById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        CategoryEntity categoryEntity =(CategoryEntity) session.load(CategoryEntity.class,new Integer(id));
        logger.info("CategoryEntity successfully loaded. CategoryEntity details: "+ categoryEntity);
        return categoryEntity;
    }

    @SuppressWarnings("unchecked")
    public List<CategoryEntity> listCategories() {
        Session session = this.sessionFactory.getCurrentSession();
        List<CategoryEntity> categoryEntities = session.createQuery("from CategoryEntity").list();
        for (CategoryEntity categoryEntity : categoryEntities){
            logger.info("Category list: "+ categoryEntity);
        }
        return categoryEntities;
    }
}
