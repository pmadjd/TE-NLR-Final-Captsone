package com.techelevator.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class Pet {
    private Long petId;
    @JsonProperty("pet_name")
    private String petName;
    private String petType;
    private String petGender;
    private String petBreed;
    private Date petBirthdate;
    private String petDescription;
    private String petPhoto;

    public Pet() {
    }

    public Pet(Long petId, String petName, String petType, String petGender, String petBreed, Date petBirthdate, String petDescription, String petPhoto) {
        this.petId = petId;
        this.petName = petName;
        this.petType = petType;
        this.petGender = petGender;
        this.petBreed = petBreed;
        this.petBirthdate = petBirthdate;
        this.petDescription = petDescription;
        this.petPhoto = petPhoto;
    }

    public Long getPetId() {
        return petId;
    }

    public String getPetName() {
        return petName;
    }

    public String getPetType() {
        return petType;
    }

    public String getPetGender() {
        return petGender;
    }

    public String getPetBreed() {
        return petBreed;
    }

    public Date getPetBirthdate() {
        return petBirthdate;
    }

    public String getPetDescription() {
        return petDescription;
    }

    public String getPetPhoto() {
        return petPhoto;
    }

    public void setPetId(Long petId) {
        this.petId = petId;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public void setPetType(String petType) {
        this.petType = petType;
    }

    public void setPetGender(String petGender) {
        this.petGender = petGender;
    }

    public void setPetBreed(String petBreed) {
        this.petBreed = petBreed;
    }

    public void setPetBirthdate(Date petBirthdate) {
        this.petBirthdate = petBirthdate;
    }

    public void setPetDescription(String petDescription) {
        this.petDescription = petDescription;
    }

    public void setPetPhoto(String petPhoto) {
        this.petPhoto = petPhoto;
    }
}