package salesproperty.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import salesproperty.dao.CategoryDAO;
import salesproperty.service.CategoryService;

@Controller
public class CategoryController {

    private CategoryService categoryService;

    @Autowired(required = true)
    @Qualifier(value = "CategoryService")
    public void setFlatService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }


}
