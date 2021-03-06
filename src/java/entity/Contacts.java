package entity;
// Generated Aug 1, 2020 2:29:25 PM by Hibernate Tools 4.3.1


import java.io.Serializable;

/**
 * Contacts generated by hbm2java
 */
public class Contacts  implements java.io.Serializable {


     private int contactId;
     private String contactAddress;
     private String contactEmail;
     private String contactHotline;
     private int contactStatus;

    public Contacts() {
    }

    public Contacts(int contactId, String contactAddress, String contactEmail, String contactHotline, int contactStatus) {
       this.contactId = contactId;
       this.contactAddress = contactAddress;
       this.contactEmail = contactEmail;
       this.contactHotline = contactHotline;
       this.contactStatus = contactStatus;
    }
   
    public int getContactId() {
        return this.contactId;
    }
    
    public void setContactId(int contactId) {
        this.contactId = contactId;
    }
    public String getContactAddress() {
        return this.contactAddress;
    }
    
    public void setContactAddress(String contactAddress) {
        this.contactAddress = contactAddress;
    }
    public String getContactEmail() {
        return this.contactEmail;
    }
    
    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }
    public String getContactHotline() {
        return this.contactHotline;
    }
    
    public void setContactHotline(String contactHotline) {
        this.contactHotline = contactHotline;
    }
    public int getContactStatus() {
        return this.contactStatus;
    }
    
    public void setContactStatus(int contactStatus) {
        this.contactStatus = contactStatus;
    }




}


