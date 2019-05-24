package cn.service;

import cn.pojo.Person;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonService {
    int addperson(Person person);

    List<Person> queryAll();

    List<Person> queryAge(String age);

    List<Person> querySex(String sex);

    List<Person> queryDormNumber(String dormnumber);

    List<Person> queryName(String name);

    List<Person> queryDormBuilding(String dormbuilding);

    int deleteperson(String name,String dormnumber);

    int updateperson(Person person);//modify

    Person queryByNameAndDormNumber(String name,String dormnumber);
}