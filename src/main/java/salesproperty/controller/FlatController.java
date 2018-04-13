package salesproperty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import salesproperty.model.Flat;
import salesproperty.service.FlatService;

@Controller
public class FlatController {
    private FlatService flatService;

    @Autowired(required = true)
    @Qualifier(value = "FlatService")
    public void setFlatService(FlatService flatService) {
        this.flatService = flatService;
    }

    @RequestMapping(value = "/flats", method = RequestMethod.GET)
    public String listFlats(Model model){
        model.addAttribute("flat", new Flat());
        model.addAttribute("listFlats", this.flatService.listFlats());

        return "flats";
    }

    @RequestMapping(value = "/flats/add", method = RequestMethod.POST)
    public String addFlat(@ModelAttribute("flat") Flat flat){
        if(flat.getFlat_id() == 0){
            this.flatService.addFlat(flat);
        }else {
            this.flatService.updateFlat(flat);
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
