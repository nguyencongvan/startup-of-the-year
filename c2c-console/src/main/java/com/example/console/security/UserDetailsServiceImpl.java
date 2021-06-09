//package com.example.console.security;
//
//import com.vnnet.c2c.console.controller.HomeController;
//import com.vnnet.c2c.web.model.SysUser;
//import com.vnnet.c2c.web.service.SysUserService;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//import java.util.Set;
//import java.util.stream.Collectors;
//
//
//@Service
//public class UserDetailsServiceImpl implements UserDetailsService {
//
//    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
//
//
//    @Autowired
//    private SysUserService sysUserService;
//
//    @Override
//    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        SysUser user = sysUserService.findByName(username);
//        if (user == null) {
//            throw new UsernameNotFoundException("this user does not exist");
//        }
//
//
//        // The list of user permissions, based on the comparison of the permission identifier owned by the user with the interface marked as @PreAuthorize ("hasAuthority ('sys: menu: view')"), decide whether the interface can be called
//        Set<String> permissions = sysUserService.findPermissions(user.getName());
//        List<GrantedAuthority> grantedAuthorities = permissions.stream().map(com.vnnet.c2c.console.security.GrantedAuthorityImpl::new).collect(Collectors.toList());
//
//        logger.error("==========grantedAuthorities={}", grantedAuthorities);
//
//        return new com.vnnet.c2c.console.security.JwtUserDetails(user.getName(), user.getPassword(), user.getSalt(), grantedAuthorities);
//    }
//}