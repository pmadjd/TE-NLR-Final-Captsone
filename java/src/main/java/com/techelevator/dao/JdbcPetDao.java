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
        String sql = "SELECT * FROM pets WHERE pet_type != 'Dog' AND pet_type != 'Cat'";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()) {
            Pet pet = mapRowToPet(results);
            pets.add(pet);
        }
        return pets;
    }

    @Override
    public Pet getPet(Long petId) {
        Pet pet = null;
        String sql = "SELECT * FROM pets WHERE pet_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, petId);
        if (results.next()) {
            pet = mapRowToPet(results);
        }
        return pet;
    }

    @Override
    public Pet createPet(Pet pet) {
        String sql = "INSERT INTO pets (pet_name, pet_type, pet_gender, pet_breed, pet_birthdate, pet_description, pet_photo)" +
                "VALUES (?, ?, ?, ?, ?, ?, ?) RETURNING pet_id";
        Long newPet = jdbcTemplate.queryForObject(sql, Long.class, pet.getPetName(), pet.getPetType(), pet.getPetGender(),
                pet.getPetBreed(), pet.getPetBirthdate(), pet.getPetDescription(), pet.getPetPhoto());
        return getPet(newPet);
    }

    @Override
    public Pet updatePet(Pet pet) {
        Pet result = pet;
        String sql = "UPDATE pet SET pet_name = ?, pet_type = ?, pet_gender = ?, pet_breed = ?, pet_birthdate = ?, pet_description = ?, pet_photo = ?";
        jdbcTemplate.update(sql, Long.class, pet.getPetName(), pet.getPetType(), pet.getPetGender(),
                pet.getPetBreed(), pet.getPetBirthdate(), pet.getPetDescription(), pet.getPetPhoto());
        return result;
    }
    //Margaret's notes:
    //pass in pet itself instead of individual field
    //run through jdbctemplate.Update

    private Pet mapRowToPet(SqlRowSet rs) {
        Pet pet = new Pet();
        pet.setPetId(rs.getLong("pet_id"));
        pet.setPetName(rs.getString("pet_name"));
        pet.setPetType(rs.getString("pet_type"));
        pet.setPetGender(rs.getString("pet_gender"));
        pet.setPetBreed(rs.getString("pet_breed"));
        pet.setPetBirthdate(rs.getDate("pet_birthdate"));
        pet.setPetDescription(rs.getString("pet_description"));
        pet.setPetPhoto(rs.getString("pet_photo"));
        return pet;
    }
}
//    @Override
//    public List<Pet> getPets(String petType, String petBreed, ) {
//        List<Pet> pets = new ArrayList<>();
//        String sql = "SELECT * FROM pets WHERE adopted_is false";
//                if (petType != null && !petType.isEmpty()) {
//                    sql += "AND "+ petType +" = ?";
//                }
//                  if (petBreed != null && !petBreed.isEmpty()) {
//                      sql += "AND "+ petBreed +" = ?";
//                   if (pet
//
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

