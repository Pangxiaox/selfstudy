package cn.service.Impl;

import cn.dao.PersonDao;
import cn.service.PersonService;
import cn.pojo.Person;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.jws.Oneway;

@Service
public class PersonServiceImpl implements  PersonService {
    @Autowired
    private PersonDao persondao;

    @Override
    public int addperson(Person person) {
        return persondao.addperson(person);
    }

    @Override
    public List<Person> queryAll() {
        return persondao.queryAll();
    }

    @Override
    public int deleteperson(String name,String dormnumber) {
        return persondao.deleteperson(name,dormnumber);
    }

    @Override
    public List<Person> queryAge(String age){return persondao.queryAge(age);}

    @Override
    public List<Person> querySex(String sex){return persondao.querySex(sex);}

    @Override
    public List<Person> queryDormNumber(String dormnumber){return persondao.queryDormNumber(dormnumber);}

    @Override
    public List<Person> queryName(String name){return persondao.queryName(name);}

    @Override
    public List<Person> queryDormBuilding(String dormbuilding){return persondao.queryDormBuilding(dormbuilding);}

    @Override
    public int updateperson(Person person)
    {
        return persondao.updateperson(person);
    }

    @Override
    public Person queryByNameAndDormNumber(String name,String dormnumber)
    {
        return persondao.queryByNameAndDormNumber(name,dormnumber);
    }

}
