package com.blood.model;

public class Hospital {
    private int id;
    private int userId;
    private String hospitalName;
    private String address;
    private String contact;
    // getters & setters
    public int getId(){return id;}
    public void setId(int id){this.id=id;}
    public int getUserId(){return userId;}
    public void setUserId(int userId){this.userId=userId;}
    public String getHospitalName(){return hospitalName;}
    public void setHospitalName(String hospitalName){this.hospitalName=hospitalName;}
    public String getAddress(){return address;}
    public void setAddress(String address){this.address=address;}
    public String getContact(){return contact;}
    public void setContact(String contact){this.contact=contact;}
}
