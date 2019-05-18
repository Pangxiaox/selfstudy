package cn.dao;

import cn.pojo.Person;
import java.util.*;

public interface PersonDao {
    int addperson(Person person);

    List<Person> queryAll();

    int deleteperson(String name);

    int updateperson(Person person);//modify

    Person queryByName(String name);
}
