package com.techelevator.controller;

import com.techelevator.dao.PetDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Pet;
import com.techelevator.model.User;
import com.techelevator.security.jwt.TokenProvider;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
public class PetController {
    private UserDao userDao;
    private PetDao petDao;

    public PetController(UserDao userDao, PetDao petDao) {
        this.userDao = userDao;
        this.petDao = petDao;
    }

    @RequestMapping(path = "/dogs", method = RequestMethod.GET)
    public List<Pet> getDogs() {
        return petDao.getDogs();
    }

    @RequestMapping(path = "/cats", method = RequestMethod.GET)
    public List<Pet> getCats() {
        return petDao.getCats();
    }
    @RequestMapping(path = "/others", method = RequestMethod.GET)
    public List<Pet> getOthers() {
        return petDao.getOthers();
    }

<<<<<<< HEAD
    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public Pet getPetById(@PathVariable long petId) {
        return petDao.getPetById(petId);
    }

=======
    @ResponseStatus(HttpStatus.CREATED)
>>>>>>> 2e964cfe9ad6076219f758b59f3a1761ac36fb58
    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(path = "/addPet", method = RequestMethod.POST)
    public Pet createPet(@RequestBody Pet pet) {
        return petDao.createPet(pet);
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(path = "/updatePet", method = RequestMethod.PUT)
    public Pet updatePet(@RequestBody Pet pet, Long petId) {
        return petDao.updatePet(pet, petId);
    }
}



