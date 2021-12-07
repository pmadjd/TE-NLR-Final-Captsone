package com.techelevator.model;

public class Pet {

    private Long pet_id;
    private String pet_name;
    private String pet_type;
    private String pet_gender;
    private String pet_breed;
    private String pet_birthdate;
    private String pet_description;
    private String pet_photo;

    public Pet() {
    }

    public Pet(Long pet_id, String pet_name, String pet_type, String pet_gender, String pet_breed, String pet_birthdate, String pet_description, String pet_photo) {
        this.pet_id = pet_id;
        this.pet_name = pet_name;
        this.pet_type = pet_type;
        this.pet_gender = pet_gender;
        this.pet_breed = pet_breed;
        this.pet_birthdate = pet_birthdate;
        this.pet_description = pet_description;
        this.pet_photo = pet_photo;
    }

    public Long getPet_id() {
        return pet_id;
    }

    public String getPet_name() {
        return pet_name;
    }

    public String getPet_type() {
        return pet_type;
    }

    public String getPet_gender() {
        return pet_gender;
    }

    public String getPet_breed() {
        return pet_breed;
    }

    public String getPet_birthdate() {
        return pet_birthdate;
    }

    public String getPet_description() {
        return pet_description;
    }

    public String getPet_photo() {
        return pet_photo;
    }

    public void setPet_id(Long pet_id) {
        this.pet_id = pet_id;
    }

    public void setPet_name(String pet_name) {
        this.pet_name = pet_name;
    }

    public void setPet_type(String pet_type) {
        this.pet_type = pet_type;
    }

    public void setPet_gender(String pet_gender) {
        this.pet_gender = pet_gender;
    }

    public void setPet_breed(String pet_breed) {
        this.pet_breed = pet_breed;
    }

    public void setPet_birthdate(String pet_birthdate) {
        this.pet_birthdate = pet_birthdate;
    }

    public void setPet_description(String pet_description) {
        this.pet_description = pet_description;
    }

    public void setPet_photo(String pet_photo) {
        this.pet_photo = pet_photo;
    }
}

