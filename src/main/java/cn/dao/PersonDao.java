package cn.dao;

import cn.pojo.Person;
import org.apache.ibatis.annotations.Param;

import java.util.*;

public interface PersonDao {
    int addperson(Person person);

    List<Person> queryAll();

    int deleteperson(@Param("name") String name, @Param("dormnumber") String dormnumber);
    //对于同名的人的修改异常的解决关键点

    int updateperson(Person person);//modify

    Person queryByNameAndDormNumber(@Param("name") String name,@Param("dormnumber") String dormnumber);
}
