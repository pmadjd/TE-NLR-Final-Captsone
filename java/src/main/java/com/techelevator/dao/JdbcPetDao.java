package com.techelevator.dao;

import com.techelevator.model.Pet;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcPetDao implements PetDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcPetDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Pet> getDogs() {
        List<Pet> pets = new ArrayList<>();
        String sql = "SELECT * FROM pets WHERE pet_type = 'Dog'";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()) {
            Pet pet = mapRowToPet(results);
            pets.add(pet);
        }
        return pets;
    }

    @Override
    public List<Pet> getCats() {
        List<Pet> pets = new ArrayList<>();
        String sql = "SELECT * FROM pets WHERE pet_type = 'Cat'";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()) {
            Pet pet = mapRowToPet(results);
            pets.add(pet);
        }
        return pets;
    }

    @Override
    public List<Pet> getOthers() {
        List<Pet> pets = new ArrayList<>();
        String sql = "SELECT * FROM pets WHERE pet_type = 'Other'";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()) {
            Pet pet = mapRowToPet(results);
            pets.add(pet);
        }
        return pets;
    }

    private Pet mapRowToPet(SqlRowSet rs) {
        Pet pet = new Pet();
        pet.setPetId(rs.getLong("pet_id"));
        pet.setPetName(rs.getString("pet_name"));
        pet.setPetType(rs.getString("pet_type"));
        pet.setPetGender(rs.getString("pet_gender"));
        pet.setPetBreed(rs.getString("pet_breed"));
        pet.setPetBirthdate(rs.getString("pet_birthdate"));
        pet.setPetDescription(rs.getString("pet_description"));
        pet.setPetPhoto(rs.getString("pet_photo"));
        return pet;

    }
}
//    @Override
//    public List<Pet> getPets(String petType) {
//        List<Pet> pets = new ArrayList<>();
//        String sql = "SELECT * FROM pets";
//                if (petType != null && !petType.isEmpty()) {
//                    sql += "WHERE "+ petType +" = ?";
//                }
//        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, petType);
//                while(results.next()) {
//                    Pet pet = mapRowToPet(results);
//                    pets.add(pet);
//                }
//        return pets;
//    }
// jdbctemplate
// write the sql get allpets
// add boolean to database for pets (adopted not adopted)

