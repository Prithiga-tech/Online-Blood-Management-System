package com.blood.model;

import java.sql.Timestamp;

public class Request {
    private int id;
    private String requesterName;
    private String bloodGroup;
    private String city;
    private String contact;
    private String status;
    private Timestamp requestedOn;
    // getters & setters
    public int getId(){return id;}
    public void setId(int id){this.id=id;}
    public String getRequesterName(){return requesterName;}
    public void setRequesterName(String requesterName){this.requesterName=requesterName;}
    public String getBloodGroup(){return bloodGroup;}
    public void setBloodGroup(String bloodGroup){this.bloodGroup=bloodGroup;}
    public String getCity(){return city;}
    public void setCity(String city){this.city=city;}
    public String getContact(){return contact;}
    public void setContact(String contact){this.contact=contact;}
    public String getStatus(){return status;}
    public void setStatus(String status){this.status=status;}
    public Timestamp getRequestedOn(){return requestedOn;}
    public void setRequestedOn(Timestamp requestedOn){this.requestedOn=requestedOn;}
}
