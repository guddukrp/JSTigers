package com.tap.model;


public class Vendor {
    private long vendorId;
    private String vendorName;
    private String bankAccountNo;
    private String bankName;
    private String addressLine1;
    private String addressLine2;
    private String city;
    private String country;
    private String zipCode;

    // Constructors (default and parameterized)

    public Vendor() {
        // Default constructor
    }

    public Vendor(String vendorName, String bankAccountNo, String bankName,
                  String addressLine1, String addressLine2, String city,
                  String country, String zipCode) {
        this.vendorName = vendorName;
        this.bankAccountNo = bankAccountNo;
        this.bankName = bankName;
        this.addressLine1 = addressLine1;
        this.addressLine2 = addressLine2;
        this.city = city;
        this.country = country;
        this.zipCode = zipCode;
    }

    // Getter and Setter methods for all fields

    public long getVendorId() {
        return vendorId;
    }

    public void setVendorId(long vendorId) {
        this.vendorId = vendorId;
    }

    public String getVendorName() {
        return vendorName;
    }

    public void setVendorName(String vendorName) {
        this.vendorName = vendorName;
    }

    public String getBankAccountNo() {
        return bankAccountNo;
    }

    public void setBankAccountNo(String bankAccountNo) {
        this.bankAccountNo = bankAccountNo;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }
    
}



