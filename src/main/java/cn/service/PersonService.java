package cn.service;

import cn.pojo.Person;

import java.util.List;

public interface PersonService {
    int addperson(Person person);

    List<Person> queryAll();

    int deleteperson(String name,String dormnumber);

    int updateperson(Person person);//modify

    Person queryByNameAndDormNumber(String name,String dormnumber);
}