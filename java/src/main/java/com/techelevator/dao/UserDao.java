package com.techelevator.dao;

import com.techelevator.model.User;

import java.util.List;

public interface UserDao {

    List<User> findAll();

    User getUserById(Long userId);

    User findByUsername(String username);

    int findIdByUsername(String username);

    boolean create(String username, String password, String role, String firstname, String lastname,
           String email, String phonenum);

    User updateIsApproved(User user, Long id);

    User updateIsRejected(User user, Long id);

    User create(User user);
}
