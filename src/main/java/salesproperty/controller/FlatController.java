package salesproperty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import salesproperty.dao.CategoryDAO;
import salesproperty.model.Attributes;
import salesproperty.model.FlatEntity;
import salesproperty.model.MessageEntity;
import salesproperty.service.CategoryService;
import salesproperty.service.FlatService;
import salesproperty.service.MessageService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Controller
public class FlatController {
    private FlatService flatService;

    private CategoryService categoryService;

    private MessageService messageService;

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

    @Autowired(required = true)
    @Qualifier(value = "MessageService")
    public void setMessageService(MessageService messageService) {
        this.messageService = messageService;
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

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String indexFlats(Model model){
        model.addAttribute("flat",this.flatService.getFlatById(new Random().nextInt(this.flatService.listFlats().size())+1));
        List list = this.flatService.listFlats();
        for (int i = 3; i <list.size(); i++){
            list.remove(i);
        }
        model.addAttribute("attributesForSearch", new Attributes());
        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("listFlats",list);
        model.addAttribute("message", new MessageEntity());
        return "index";
    }

    @RequestMapping(value = "/search-flats",  method = RequestMethod.POST)
    public String searchFlats(@ModelAttribute("attributes") Attributes attributes, Model model){
       // model.addAttribute("flat",this.flatService.getFlatById(new Random().nextInt(this.flatService.listFlats().size())+1));
        List <FlatEntity> list = this.flatService.listFlats();
        List <FlatEntity> newlist = new ArrayList<FlatEntity>();

        int size = list.size();
        for (int i = 0; i <size; i++){
            if (list.get(i).getPrice() >= Integer.valueOf(attributes.getAtribute5()) && list.get(i).getPrice() <= Integer.valueOf(attributes.getAtribute6()) && list.get(i).getCategoryId() == Integer.valueOf(attributes.getAtribute1()) ){
                newlist.add(list.get(i));
            }
        }



        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("listFlats",newlist);
        return "flats";
    }

    @RequestMapping(value = "/flats/add", method = RequestMethod.POST)
    public String addMail(@ModelAttribute("flat") FlatEntity flatEntity){
        if(flatEntity.getFlatId() == 0){
            this.flatService.addFlat(flatEntity);
        }else {
            this.flatService.updateFlat(flatEntity);
        }

        return "redirect:/flats";
    }

    @RequestMapping(value = "/addmessage", method = RequestMethod.POST)
    public String addFlat(@ModelAttribute("message") MessageEntity messageEntity, HttpServletRequest request){
        if(messageEntity.getId() == 0){
            this.messageService.addMessage(messageEntity);
        }else {
            this.messageService.updateMessage(messageEntity);
        }

        return "redirect:"+request.getHeader("Referer");
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
