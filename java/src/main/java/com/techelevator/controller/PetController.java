package com.techelevator.controller;

import com.techelevator.dao.PetDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Pet;
import com.techelevator.security.jwt.TokenProvider;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;

@RestController
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

//    @RequestMapping(path = "/addpet", method = RequestMethod.POST)
//

//    @RequestMapping(path = "/pets", method = RequestMethod.GET)
//    public String getPets(Principal principal) {
//
//    }
}



