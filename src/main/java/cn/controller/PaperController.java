package cn.controller;
import cn.service.PersonService;
import cn.pojo.Person;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/person")
public class PaperController {
    @Autowired
    private PersonService paperservice;

    @RequestMapping("/allperson")
    public String list(Model model)
    {
        List<Person> list=paperservice.queryAll();
        model.addAttribute("list",list);
        return "allperson";
    }

    @RequestMapping("/addperson")
    public String addperson(Person person)
    {
        paperservice.addperson(person);
        return "redirect:/person/allperson";
    }


    @RequestMapping("/toaddPerson")
    public String toaddPerson()
    {
        return "addperson";
    }
}
