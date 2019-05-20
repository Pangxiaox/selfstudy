package cn.pojo;

public class Person {
    private String name;
    private String dormbuilding;
    private String dormnumber;
    private int age;
    private String sex;

    public String getName() {
        return name;
    }

   public String getDormbuilding(){return dormbuilding;}

    public int getAge() {
        return age;
    }

    public String getSex() {
        return sex;
    }

   public String getDormnumber(){return dormnumber;}

    public void setName(String name) {
        this.name = name;
    }

    public void setDormnumber(String dormnumber){this.dormnumber=dormnumber;}

    public void setAge(int age) {
        this.age = age;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setDormbuilding(String dormbuilding){this.dormbuilding=dormbuilding;}
}

