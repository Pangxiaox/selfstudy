package cn.service;

import cn.pojo.Person;

import java.util.List;

public interface PersonService {
    int addperson(Person person);

    List<Person> queryAll();

}