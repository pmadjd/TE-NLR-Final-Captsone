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

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(path = "/approveuser", method = RequestMethod.PUT)
    public User updateIsApproved(@RequestBody User user, Long id) {
        return userDao.updateIsApproved(user, id);
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(path = "/rejectuser", method = RequestMethod.PUT)
    public User updateIsRejected(@RequestBody User user, Long id) {
        return userDao.updateIsRejected(user, id);
    }
}