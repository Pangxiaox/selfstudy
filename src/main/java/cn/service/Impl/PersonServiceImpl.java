package cn.service.Impl;

import cn.dao.PersonDao;
import cn.service.PersonService;
import cn.pojo.Person;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
