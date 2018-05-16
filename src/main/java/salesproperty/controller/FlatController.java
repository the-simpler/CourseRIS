package salesproperty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import salesproperty.dao.CategoryDAO;
import salesproperty.model.*;
import salesproperty.service.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

@EnableWebMvc
@Controller
public class FlatController {
    private FlatService flatService;

    private CategoryService categoryService;

    private MessageService messageService;

    private RequestService requestService;

    private UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "UserService")
    public void setFlatService(UserService userService) {
        this.userService = userService;
    }

    @Autowired(required = true)
    @Qualifier(value = "RequestService")
    public void setFlatService(RequestService requestService) {
        this.requestService = requestService;
    }

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
    public String showContact(Model model, @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("message", new MessageEntity());
        return "contacts";
    }

    @RequestMapping(value = "/flats", method = RequestMethod.GET)
    public String listFlats(Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("flat", new FlatEntity());
        model.addAttribute("listFlats", this.flatService.listFlats());
        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("message", new MessageEntity());
        return "flats";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String indexFlats(Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        List <FlatEntity> newlist = this.flatService.listFlats();
        int randomNumber = new Random().nextInt(newlist.size());
        model.addAttribute("flat", this.flatService.getFlatById(newlist.get(randomNumber).getFlatId()));
        List list = this.flatService.listFlats();
        int size = list.size();
        for (int i = 3; i < size; i++) {
            list.remove(3);
        }
        model.addAttribute("role", role);
        model.addAttribute("attributesForSearch", new Attributes());
        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("listFlats", list);
        model.addAttribute("message", new MessageEntity());
        return "index";
    }

    @RequestMapping(value = "/search-flats", method = RequestMethod.POST)
    public String searchFlats(@ModelAttribute("attributes") Attributes attributes, Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        // model.addAttribute("flat",this.flatService.getFlatById(new Random().nextInt(this.flatService.listFlats().size())+1));
        List<FlatEntity> list = this.flatService.listFlats();
        List<FlatEntity> newlist = new ArrayList<FlatEntity>();
        if (Integer.valueOf(attributes.getAtribute5())>Integer.valueOf(attributes.getAtribute6()))
        {
            model.addAttribute("error", "Error");
         if(Integer.valueOf(role) == 0)
            indexFlats(model, username,role);
         else
             managerLogin(model, username, role);
         return "index";


        }

        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).getPrice() >= Integer.valueOf(attributes.getAtribute5()) && list.get(i).getPrice() <= Integer.valueOf(attributes.getAtribute6()) && list.get(i).getCategoryId() == Integer.valueOf(attributes.getAtribute1())) {
                newlist.add(list.get(i));
            }
        }

        model.addAttribute("role", role);
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("listFlats", newlist);
        return "flats";
    }

    @RequestMapping(value = "/flats/add", method = RequestMethod.POST)
    public String addFlat(@ModelAttribute("flat") FlatEntity flatEntity,HttpServletRequest request, @CookieValue(value = "user", defaultValue = "") String username, Model model,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }


        if (flatEntity.getFlatId() == 0) {
            this.flatService.addFlat(flatEntity);
        } else {
            this.flatService.updateFlat(flatEntity);
        }

        return "redirect:/managerpanel";
    }

    @RequestMapping(value = "/addmessage", method = RequestMethod.POST)
    public String addMessage(@ModelAttribute("message") MessageEntity messageEntity, HttpServletRequest request, @CookieValue(value = "user", defaultValue = "") String username, Model model,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        if (messageEntity.getId() == 0) {
            this.messageService.addMessage(messageEntity);
        } else {
            this.messageService.updateMessage(messageEntity);
        }

        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping("/remove/{id}")
    public String removeFlat(@PathVariable("id") int id, @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {

        if (!role.equals("1")) {
            return "redirect:/404";
        }

        this.flatService.removeFlat(id);

        return "redirect:/managerpanel";
    }

    @RequestMapping("/edit/{id}")
    public String editFlat(@PathVariable("id") int id, Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }

        model.addAttribute("listCategories", this.categoryService.listCategories());;
        model.addAttribute("role", role);
        model.addAttribute("flat", this.flatService.getFlatById(id));
        model.addAttribute("listFlats", this.flatService.listFlats());
        model.addAttribute("message", new MessageEntity());
        return "flats";
    }

    @RequestMapping("/flatdata/{id}")
    public String flatData(@PathVariable("id") int id, Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("flat", this.flatService.getFlatById(id));
        model.addAttribute("message", new MessageEntity());
        return "flatdata";
    }

    @RequestMapping(value = "/about")
    public String showAbout(Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("message", new MessageEntity());
        return "about-us";
    }

    @RequestMapping(value = "/gallery")
    public String showGallery(Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("listFlats", this.flatService.listFlats());
        return "gallery";
    }

    @RequestMapping(value = "/404")
    public String showError(Model model,  @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("role", role);
        return "404";
    }

    @RequestMapping(value = "/faq")
    public String showFAQ(Model model, @CookieValue(value = "user", defaultValue = "") String username,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("message", new MessageEntity());
        return "faq";
    }

    @RequestMapping(value = "/404login")
    public String showErrorLogin(Model model,  @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {

        model.addAttribute("role", role);
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("error", "You don't have permission to see this page.");
        return "404";
    }

    @RequestMapping("/editflat/{id}")
    public String flatEdit(@PathVariable("id") int id, Model model, @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") || !role.equals("1")) {
            return "redirect:/404login";
        }
        if (id == 0){
            model.addAttribute("flat", new FlatEntity());
        }else{
            model.addAttribute("flat", this.flatService.getFlatById(id));
        }
        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("role", role);

        model.addAttribute("message", new MessageEntity());
        return "flatedit";
    }

    @RequestMapping("/managerpanel")
    public String manager(Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") || !role.equals("1")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("flat", new FlatEntity());
        model.addAttribute("listFlats", this.flatService.listFlats());
        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("message", new MessageEntity());
        return "managerpanel";
    }

    @RequestMapping("trylogin")
    public String managerLogin(Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") || !role.equals("1")) {
            return "redirect:/404login";
        }

        model.addAttribute("role", role);
        ArrayList idFlats = new ArrayList();
        for (FlatEntity flat:this.flatService.listFlats())
            idFlats.add(flat.getFlatId());
        model.addAttribute("flat", this.flatService.getFlatById((Integer) idFlats.get(new Random().nextInt(idFlats.size()))));
        List list = this.flatService.listFlats();
        for (int i = 3; i < list.size(); i++) {
            list.remove(i);
        }
        model.addAttribute("attributesForSearch", new Attributes());
        model.addAttribute("listCategories", this.categoryService.listCategories());
        model.addAttribute("listFlats", list);
        model.addAttribute("message", new MessageEntity());
        return "index";
    }


    @RequestMapping("/showallrequests")
    public String rquests(Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") || !role.equals("1")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);

        model.addAttribute("listRequests", this.requestService.listRequests());

        model.addAttribute("message", new MessageEntity());
        return "requests";
    }

    @RequestMapping("/showrequest")
    public String showrequest(@ModelAttribute("flatEntity") FlatEntity flatEntity, Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") ) {
            return "redirect:/404login";
        }

        model.addAttribute("role", role);
        model.addAttribute("flatEntity", flatEntity);
        model.addAttribute("userId", this.userService.getUserByNickname(username).getUserId());
        model.addAttribute("request", new RequestEntity());

        model.addAttribute("message", new MessageEntity());
        return "addrequest";
    }



    @RequestMapping("/addrequest")
    public String addRequest(@ModelAttribute("request") RequestEntity requestEntity, Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") ) {
            return "redirect:/404login";
        }

        requestService.addRequest(requestEntity);
        model.addAttribute("listCategories", this.categoryService.listCategories());;
        model.addAttribute("role", role);

        model.addAttribute("listFlats", this.flatService.listFlats());
        model.addAttribute("message", new MessageEntity());
        return "flats";
    }



    @RequestMapping("/request/del/{id}")
    public String requestDel(@PathVariable("id") int id, Model model, @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }

        this.requestService.removeRequest(id);
        model.addAttribute("role", role);

        model.addAttribute("listRequests", this.requestService.listRequests());

        model.addAttribute("message", new MessageEntity());
        if (role.equals("1"))
            return "requests";
        else
            return "account";
    }

    @RequestMapping("/account")
    public String account(Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") || !role.equals("0")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        UserEntity user = this.userService.getUserByNickname(username);

        ArrayList <RequestEntity> findRequest = new ArrayList<RequestEntity>();

        for (RequestEntity request:this.requestService.listRequests()) {
            if(request.getUserId() == user.getUserId())
                findRequest.add(request);

        }
        model.addAttribute("listRequests", findRequest);

        model.addAttribute("message", new MessageEntity());
        return "account";
    }

    @RequestMapping("/request/showupdate/{id}")
    public String showupdate(@PathVariable("id") int id, Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);

        model.addAttribute("request", this.requestService.getRequestById(id));

        model.addAttribute("message", new MessageEntity());
        return "updaterequest";
    }

    @RequestMapping("/request/update")
    public String updateRequest(@ModelAttribute("request") RequestEntity requestEntity, Model model, @CookieValue(value = "user", defaultValue = "") String username,  @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);

        this.requestService.updateRequest(requestEntity);

        UserEntity user = this.userService.getUserByNickname(username);

        ArrayList <RequestEntity> findRequest = new ArrayList<RequestEntity>();

        for (RequestEntity request:this.requestService.listRequests()) {
            if(request.getUserId() == user.getUserId())
                findRequest.add(request);

        }
        model.addAttribute("listRequests", findRequest);

        model.addAttribute("message", new MessageEntity());
        return "account";
    }
}
