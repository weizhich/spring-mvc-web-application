package com.in28minutes.login;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public boolean isValideUser(String user, String password) {
		if (user.equals("weizhich") && password.equals("0000")) {
			return true;
		}
		return false;
	}

}
