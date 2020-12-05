package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.SerimDao;
import kr.ac.hansung.model.Serim;

@Service
public class SerimService {

	
	@Autowired
	private SerimDao serimDao;
	
	public List<Serim> getCurrent(){
		return serimDao.getSerims();
	}
}
