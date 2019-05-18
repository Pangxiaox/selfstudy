package cn.controller;
import cn.service.PersonService;
import cn.pojo.Person;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/person")
public class PaperController {
    @Autowired
    private PersonService personservice;

    @RequestMapping("/allperson")
    public String list(Model model) {
        List<Person> list = personservice.queryAll();
        model.addAttribute("list", list);
        return "allperson";
    }

    @RequestMapping("/addperson")
    public String addperson(Person person) {
        personservice.addperson(person);
        return "redirect:/person/allperson";
    }

    @RequestMapping("/toaddPerson")
    public String toaddPerson() {
        return "addperson";
    }

    @RequestMapping("/del/{name}")
    public String deleteperson(@PathVariable("name") String name) {
        personservice.deleteperson(name);
        return "redirect:/person/allperson";
    }

    @RequestMapping("/toupdatePerson")
    public String toupdateperson(Model model,String name)
    {
        model.addAttribute("person",personservice.queryByName(name));
        return "updateperson";
    }

    @RequestMapping("/updateperson")
    public String updateperson(Model model,Person person)
    {
        personservice.updateperson(person);
        person=personservice.queryByName(person.getName());
        model.addAttribute("person",person);
        return "redirect:/person/allperson";
    }
}
