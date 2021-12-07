package com.techelevator.dao;

import com.techelevator.model.Pet;

import java.util.List;

public interface PetDao {

    List<Pet> getDogs();
    List<Pet> getCats();
    List<Pet> getOthers();
//    List<Pet> getPets(String petType);
}
