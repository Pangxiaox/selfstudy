package cn.controller;
import cn.service.PersonService;
import cn.pojo.Person;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping("/queryAge")
    public String list2( String age,Model model)
    {
        List<Person> list2=personservice.queryAge(age);
        model.addAttribute("list2",list2);
        return "searchperson";
    }

    @RequestMapping("/queryDormBuilding")
    public String list3(String dormbuilding,Model model)
    {
        List<Person> list3=personservice.queryDormBuilding(dormbuilding);
        model.addAttribute("list3",list3);
        return "searchperson";
    }

    @RequestMapping("/querySex")
    public String list4(String sex,Model model)
    {
        List<Person> list4=personservice.querySex(sex);
        model.addAttribute("list4",list4);
        return "searchperson";
    }

    @RequestMapping("/queryDormNumber")
    public String list5(String dormnumber,Model model)
    {
        List<Person> list5=personservice.queryDormNumber(dormnumber);
        model.addAttribute("list5",list5);
        return "searchperson";
    }

    @RequestMapping("/queryName")
    public String list6(String name,Model model) {
        List<Person> list6 = personservice.queryName(name);
        model.addAttribute("list6", list6);
        return "searchperson";
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

    @RequestMapping("/del/{name},{dormnumber}")
    public String deleteperson(@PathVariable("name") String name,@PathVariable("dormnumber")String dormnumber) {
        personservice.deleteperson(name,dormnumber);
        return "redirect:/person/allperson";
    }

    @RequestMapping("/toupdatePerson/{name},{dormnumber}")
    public String toupdateperson(Model model,@PathVariable("name") String name,@PathVariable("dormnumber") String dormnumber)
    {
        model.addAttribute("person",personservice.queryByNameAndDormNumber(name,dormnumber));
        return "updateperson";
    }

    @RequestMapping("/updateperson")
    public String updateperson(Model model,Person person)
    {
        personservice.updateperson(person);
        person=personservice.queryByNameAndDormNumber(person.getName(),person.getDormnumber());
        model.addAttribute("person",person);
        return "redirect:/person/allperson";
    }
}
