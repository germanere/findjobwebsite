package com.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.entity.User;
import com.repository.UserRepository;

@Service
@Component(value = "userService")
public class userService {
	
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public List<User> getUsers(){
		return userRepository.findAll();
	}
	
    @Transactional
    public void deleteUser(int theId) {
        userRepository.deleteById(theId);
    }
    
    @Transactional
    public void saveUser(User theuser) {
        userRepository.save(theuser);
    }
    
    public User findByEmail (String email) {
    	List<User> users = userRepository.findAll();
    	for(User user :users) {
    		if(user.getEmail().equalsIgnoreCase(email)) {
    			return user;
    		}
    	}
    	return null;
    }

}
