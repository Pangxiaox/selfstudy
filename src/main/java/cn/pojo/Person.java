package cn.pojo;

public class Person {
    private String name;
    private String dorm_number;
    private String dorm_building;
    private int age;
    private String sex;

    public String getName() {
        return name;
    }

    public String getDorm_number() {
        return dorm_number;
    }

    public int getAge() {
        return age;
    }

    public String getSex() {
        return sex;
    }

    public String getDorm_building() {
        return dorm_building;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDorm_number(String dorm_number) {
        this.dorm_number = dorm_number;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setDorm_building(String dorm_building)
    {
        this.dorm_building=dorm_building;
    }
}
