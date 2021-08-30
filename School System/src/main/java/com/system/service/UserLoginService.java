package com.system.service;

import com.system.po.UserLogin;

public interface UserLoginService {

    // Search for user by username
    UserLogin findByName(String name) throws Exception;

    // save info of user
    void save(UserLogin userlogin) throws Exception;

    // delete by name
    void removeByName(String name) throws Exception;

    // update by name
    void updateByName(String name, UserLogin userlogin);

}
