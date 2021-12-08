package com.techelevator.model;

public class Pet {
//camelCase
    private Long petId;
    private String petName;
    private String petType;
    private String petGender;
    private String petBreed;
    private String petBirthdate;
    private String petDescription;
    private String petPhoto;

    public Pet() {
    }

    public Pet(Long pet_id, String pet_name, String pet_type, String pet_gender, String pet_breed, String pet_birthdate, String pet_description, String pet_photo) {
        this.petId = pet_id;
        this.petName = pet_name;
        this.petType = pet_type;
        this.petGender = pet_gender;
        this.petBreed = pet_breed;
        this.petBirthdate = pet_birthdate;
        this.petDescription = pet_description;
        this.petPhoto = pet_photo;
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

    public String getPetBirthdate() {
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

    public void setPetBirthdate(String petBirthdate) {
        this.petBirthdate = petBirthdate;
    }

    public void setPetDescription(String petDescription) {
        this.petDescription = petDescription;
    }

    public void setPetPhoto(String petPhoto) {
        this.petPhoto = petPhoto;
    }
}

