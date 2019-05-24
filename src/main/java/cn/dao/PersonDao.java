package cn.dao;

import cn.pojo.Person;
import org.apache.ibatis.annotations.Param;

import java.util.*;

public interface PersonDao {
    int addperson(Person person);

    List<Person> queryAll();

    List<Person> queryAge(@Param("age")String age);

    List<Person> queryDormBuilding(@Param("dormbuilding")String dormbuilding);

    List<Person> queryDormNumber(@Param("dormnumber")String dormnumber);

    List<Person> queryName(@Param("name")String name);

    List<Person> querySex(@Param("sex")String sex);

    int deleteperson(@Param("name") String name, @Param("dormnumber") String dormnumber);
    //对于同名的人的修改异常的解决关键点

    int updateperson(Person person);//modify

    Person queryByNameAndDormNumber(@Param("name") String name,@Param("dormnumber") String dormnumber);
}
