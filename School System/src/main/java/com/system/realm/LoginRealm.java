package com.system.realm;

import com.system.mapper.UserloginMapper;
import com.system.po.Role;
import com.system.po.Userlogin;
import com.system.service.*;
import com.system.service.UserloginService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Jessie on 2021/8/30.
 */

@Component
public class LoginRealm extends AuthorizingRealm{

    // Resource Injection

    @Resource(name = "UserloginServiceImpl")
    private UserloginService UserloginService;

    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    /**
     * Get users privilege from database
     */
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        String username = (String) getAvailablePrincipal(principalCollection);

        Role role = null;

        try {
            Userlogin userlogin = UserloginService.findByName(username);
            // get role
            role = roleService.findByid(userlogin.getRole());
        } catch (Exception e) {
            e.printStackTrace();
        }
        // Get user's identification
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        Set<String> r = new HashSet<String>();
        if (role != null) {
            r.add(role.getRolename());
            info.setRoles(r);
        }

        return info;
    }

    /**
     * Verify identity when users log in
     */
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        String username = (String) token.getPrincipal();

        String password = new String((char[])token.getCredentials());

        Userlogin userlogin = null;
        try {
            userlogin = UserloginService.findByName(username);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (userlogin == null) {
            // Username not found
            throw new UnknownAccountException();
        } else if (!password.equals(userlogin.getPassword())) {
            // Wrong password
            throw new IncorrectCredentialsException();
        }

        // passed verification
        AuthenticationInfo aInfo = new SimpleAuthenticationInfo(username,password,getName());

        return aInfo;
    }
}
