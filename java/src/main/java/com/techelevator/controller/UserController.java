package com.techelevator.controller;

import com.techelevator.dao.PetDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.User;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class UserController {
    private UserDao userDao;
    private PetDao petDao;

    public UserController(UserDao userDao, PetDao petDao) {
        this.userDao = userDao;
        this.petDao = petDao;
    }

//    @PreAuthorize("hasAnyRole('ROLE_ADMIN'), ('ROLE_USER')")
//    @RequestMapping(path = "/listofusers", method = RequestMethod.GET)
//    public User findAll(@RequestBody User user, Long id) {
//        return userDao.findAll(user);
//    }



    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(path = "/approveUser", method = RequestMethod.PUT)
    public User updateIsApproved(@RequestBody User user, Long id) {
        return userDao.updateIsApproved(user, id);
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(path = "/rejectUser", method = RequestMethod.PUT)
    public User updateIsRejected(@RequestBody User user, Long id) {
        return userDao.updateIsRejected(user, id);
    }
}