package core;

import java.util.Date;

/**
 *
 * @author ultmate
 */
public class Parcel {
    private Long id;
    private Date postedOn;
    private String sender, sentFor, description;
    private Long senderMobile, receiverMobile;

    public Parcel(Long id, String sender, String sentFor, String description,
            Long senderMobile, Long receiverMobile){
        this.id = id;
        this.sender = sender;
        this.sentFor = sentFor;
        this.description = description;
        this.senderMobile = senderMobile;
        this.receiverMobile = receiverMobile;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getPostedOn() {
        return postedOn;
    }

    public void setPostedOn(Date postedOn) {
        this.postedOn = postedOn;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getSentFor() {
        return sentFor;
    }

    public void setSentFor(String sentFor) {
        this.sentFor = sentFor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getSenderMobile() {
        return senderMobile;
    }

    public void setSenderMobile(Long senderMobile) {
        this.senderMobile = senderMobile;
    }

    public Long getReceiverMobile() {
        return receiverMobile;
    }

    public void setReceiverMobile(Long receiverMobile) {
        this.receiverMobile = receiverMobile;
    }
    
    

}
