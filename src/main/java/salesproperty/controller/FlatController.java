package salesproperty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import salesproperty.dao.CategoryDAO;
import salesproperty.model.FlatEntity;
import salesproperty.service.CategoryService;
import salesproperty.service.FlatService;

@Controller
public class FlatController {
    private FlatService flatService;

    private CategoryService categoryService;

    @Autowired(required = true)
    @Qualifier(value = "FlatService")
    public void setFlatService(FlatService flatService) {
        this.flatService = flatService;
    }

    @Autowired(required = true)
    @Qualifier(value = "CategoryService")
    public void setFlatService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }


    @RequestMapping(value = "/contacts", method = RequestMethod.GET)
    public String showContact(Model model){
        return "contacts";
    }

    @RequestMapping(value = "/flats", method = RequestMethod.GET)
    public String listFlats(Model model){
        model.addAttribute("flat", new FlatEntity());
        model.addAttribute("listFlats", this.flatService.listFlats());
        model.addAttribute("listCategories", this.categoryService.listCategories());
        return "flats";
    }

    @RequestMapping(value = "/flats/add", method = RequestMethod.POST)
    public String addFlat(@ModelAttribute("flat") FlatEntity flatEntity){
        if(flatEntity.getFlatId() == 0){
            this.flatService.addFlat(flatEntity);
        }else {
            this.flatService.updateFlat(flatEntity);
        }

        return "redirect:/flats";
    }

    @RequestMapping("/remove/{id}")
    public String removeFlat(@PathVariable("id") int id){
        this.flatService.removeFlat(id);

        return "redirect:/flats";
    }

    @RequestMapping("edit/{id}")
    public String editFlat(@PathVariable("id") int id, Model model){
        model.addAttribute("flat", this.flatService.getFlatById(id));
        model.addAttribute("listFlats", this.flatService.listFlats());

        return "flats";
    }

    @RequestMapping("flatdata/{id}")
    public String flatData(@PathVariable("id") int id, Model model){
        model.addAttribute("flat", this.flatService.getFlatById(id));

        return "flatdata";
    }
}
