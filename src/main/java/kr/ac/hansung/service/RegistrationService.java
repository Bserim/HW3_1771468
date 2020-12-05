package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.RegistrationDao;
import kr.ac.hansung.model.Registration;

@Service
public class RegistrationService {

	@Autowired
	private RegistrationDao registrationDao;
	
	public List<Registration> getCurrent(){
		return registrationDao.getRegistration();
	}

	public void insert(Registration registraion) {
		registrationDao.insert(registraion);
		
	}
}
