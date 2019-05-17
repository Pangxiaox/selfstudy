package cn.dao;

import cn.pojo.Person;
import java.util.*;

public interface PersonDao {
    int addperson(Person person);

    List<Person> queryAll();

}
