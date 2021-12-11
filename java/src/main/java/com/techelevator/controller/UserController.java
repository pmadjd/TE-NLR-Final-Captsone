package com.techelevator.controller;

import com.techelevator.dao.PetDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.User;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class UserController {
    private UserDao userDao;
    private PetDao petDao;

    public UserController(UserDao userDao, PetDao petDao) {
        this.userDao = userDao;
        this.petDao = petDao;
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
    @RequestMapping(path = "/listOfUsers", method = RequestMethod.GET)
    public List<User> findAll() {
        return userDao.findAll();
    }

//    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')")
    @RequestMapping(path = "/approved", method = RequestMethod.GET)
    public List<User> findAllApproved() {
        return userDao.findAllApproved();
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')")
    @RequestMapping(path = "/pending", method = RequestMethod.GET)
    public List<User> findAllPending() {
        return userDao.findAllPending();
    }

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