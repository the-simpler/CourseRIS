package salesproperty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import salesproperty.model.FlatEntity;
import salesproperty.model.MessageEntity;
import salesproperty.model.UserEntity;
import salesproperty.service.UserService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@EnableWebMvc
@Controller
public class UserController {

    private UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "UserService")
    public void setFlatService(UserService userService) {
        this.userService = userService;
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin(Model model, HttpServletResponse response) {
        Cookie cookie = new Cookie("user", "");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("user", new UserEntity());
        return "login";
    }


    @RequestMapping(value = "/trylogin", method = RequestMethod.POST)
    public String showIndex(@ModelAttribute("user") UserEntity user, Model model, HttpServletResponse response) {
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("user", new UserEntity());
        UserEntity userResult = userService.getUserByNicknameAndPassword(user.getUsername(), user.getPassword());
        if (userResult != null) {
            response.addCookie(new Cookie("user", userResult.getUsername()));
            response.addCookie(new Cookie("role", String.valueOf(userResult.getRole())));
            return "redirect:/index";
        } else {
            response.addCookie(new Cookie("user", null));
            response.addCookie(new Cookie("role", null));
            model.addAttribute("error", "Wrong password or username!");
            return "login";
        }
    }

    @RequestMapping(value = "registration", method = RequestMethod.GET)
    public String showRegistration(Model model, HttpServletResponse response) {
        Cookie cookie = new Cookie("user", "");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("user", new UserEntity());
        return "registration";
    }


    @RequestMapping(value = "tryregister", method = RequestMethod.POST)
    public String registration(@ModelAttribute("user") UserEntity user, Model model, HttpServletResponse response) {
        model.addAttribute("message", new MessageEntity());
        model.addAttribute("user", new UserEntity());
        UserEntity userResult = userService.getUserByNickname(user.getUsername());
        if (userResult != null) {
            model.addAttribute("error", "This username is already in use!");

            return "registration";
        } else {
            if (user.getPassword().equals(user.getConfirmPassword())){
                userService.addUser(user);
            }else{
                model.addAttribute("error", "Password and confirm password don't match!");
                return "registration";
            }
            return "login";
        }
    }
    @RequestMapping(value = "showallusers", method = RequestMethod.GET)
    public String showAllUsers(Model model, @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") || !role.equals("1")) {
            return "redirect:/404login";
        }
        model.addAttribute("role", role);
        model.addAttribute("listUsers", this.userService.listUsers());
        model.addAttribute("message", new MessageEntity());
        return "allusers";
    }



    @RequestMapping("useredit/{id}")
    public String flatEdit(@PathVariable("id") int id, Model model, @CookieValue(value = "user", defaultValue = "") String username, @CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("") || !role.equals("1")) {
            return "redirect:/404login";
        }
        if (id == 0){
            model.addAttribute("user", new UserEntity());
        }else{
            model.addAttribute("user", this.userService.getUserById(id));
        }

        model.addAttribute("role", role);
        model.addAttribute("message", new MessageEntity());
        return "useredit";
    }


    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public String addFlat(@ModelAttribute("user") UserEntity userEntity, @CookieValue(value = "user", defaultValue = "") String username, Model model,@CookieValue(value = "role", defaultValue = "") String role) {
        if (username.equals("")) {
            return "redirect:/404login";
        }
        if (userEntity.getUserId() == 0) {
            this.userService.addUser(userEntity);
        } else {
            this.userService.updateUser(userEntity);
        }

        return "redirect:/manager";
    }

}
