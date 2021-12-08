package com.techelevator.dao;

import com.techelevator.model.Pet;

import java.util.List;

public interface PetDao {

    List<Pet> getDogs();
    List<Pet> getCats();
    List<Pet> getOthers();
    Pet getPet(String petName);
//    List<Pet> getPets(String petType);
}
