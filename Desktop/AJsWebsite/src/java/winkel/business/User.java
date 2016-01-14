package winkel.business;

import java.io.Serializable;

public class User implements Serializable {
    private Long userId;
    private String firstName;
    private String lastName;
    private String email;
    private String telephone;
    
    private String address;
    private String suburb;
    private String city;
    private String province;
    private String postalCode;
    private String country;
    
    private String visaOrMaster;
    private String cardNumber;
    private String expirationMonth;
    private String expirationYear;

    public User() {
        firstName = "";
        lastName = "";
        email = "";
        
        address = "";
        suburb = "";
        city = "";
        province = "";
        postalCode = "";
        country = "";
        visaOrMaster = "";
        cardNumber = "";
        expirationMonth = "";
        expirationYear = "";
    }
    
    public Long getId() {
        return userId;
    }

    public void setId(Long userId) {
        this.userId = userId;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getTelephone() {
        return telephone;
    }    

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setSuburb(String asuburb) {
        this.suburb = suburb;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getProvince() {
        return province;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry() {
        return country;
    }

    // this works, but it mixes the Model and the View
    public String getInvoiceInformation() {
        String information = 
                firstName + " " + lastName + "<br>"
                + email + "<br>"
                + telephone + "<br>"
                + address + "<br>" 
                + suburb + "<br" 
                + city + "<br>"
                + province + "<br>"
                + postalCode + "<br"
                + country + "<br>"
                ;
        
        return information;
    }

        
        


    public void setVisaOrMaster(String visaOrMaster) {
        this.visaOrMaster = visaOrMaster;
    }

    public String getVisaOrMaster() {
        return visaOrMaster;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setExpirationMonth(String expirationMonth) {
        this.expirationMonth = expirationMonth;
    }

    public String getExpirationMonth() {
        return expirationMonth;
    }
    
    public void setExpirationYear(String expirationYear) {
        this.expirationYear = expirationYear;
    }

    public String getExpirationYear() {
        return expirationYear;
    }    
    
}