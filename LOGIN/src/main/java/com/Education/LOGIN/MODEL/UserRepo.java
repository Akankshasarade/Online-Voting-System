package com.Education.LOGIN.MODEL;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User,Integer>{

	User findByName(String username);
	User findByPassword(String password);
}
