package salesproperty.service;

import org.springframework.transaction.annotation.Transactional;
import salesproperty.dao.CategoryDAO;
import salesproperty.model.CategoryEntity;

import java.util.List;

public class CategoryService {
    private CategoryDAO categoryDAO;

    public void setCategoryDAO(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }

    @Transactional
    public void addCategory(CategoryEntity categoryEntity) {
        this.categoryDAO.addCategory(categoryEntity);
    }

    @Transactional
    public void updateCategory(CategoryEntity categoryEntity) {
        this.categoryDAO.updateCategory(categoryEntity);
    }

    @Transactional
    public void removeCategory(int id) {
        this.categoryDAO.removeCategory(id);
    }

    @Transactional
    public CategoryEntity getCategoryById(int id) {
        return this.categoryDAO.getCategoryById(id);
    }

    @Transactional
    public List<CategoryEntity> listCategories() {
        return this.categoryDAO.listCategories();
    }
}
