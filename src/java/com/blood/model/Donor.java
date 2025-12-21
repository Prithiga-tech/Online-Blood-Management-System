package com.blood.model;
import java.sql.Date;

public class Donor {
    private int id;
    private int userId;
    private String bloodGroup;
    private String city;
    private String contact;
    private Date lastDonated;

    public Donor() {}
    // getters & setters
    public int getId(){return id;}
    public void setId(int id){this.id=id;}
    public int getUserId(){return userId;}
    public void setUserId(int userId){this.userId=userId;}
    public String getBloodGroup(){return bloodGroup;}
    public void setBloodGroup(String bloodGroup){this.bloodGroup=bloodGroup;}
    public String getCity(){return city;}
    public void setCity(String city){this.city=city;}
    public String getContact(){return contact;}
    public void setContact(String contact){this.contact=contact;}
    public Date getLastDonated(){return lastDonated;}
    public void setLastDonated(Date lastDonated){this.lastDonated=lastDonated;}
}
