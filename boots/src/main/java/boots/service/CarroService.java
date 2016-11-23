package boots.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import boots.dao.CarroRepository;
import boots.model.Carro;

@Service @Transactional
public class CarroService {
	private final CarroRepository carroRepository;
	
	public CarroService(CarroRepository carroRepository){
		super();
		this.carroRepository=carroRepository;
	}
	
	public List<Carro> findAll(){
		List<Carro> carros = new ArrayList<Carro>();
		for(Carro carro : carroRepository.findAll()){
			carros.add(carro);
		}
		return carros;
	}
	
	public void save(Carro carro){
		carroRepository.save(carro);
	}
	
	public void delete(int id){
		carroRepository.delete(id);
	}
	
	public Carro findOne (int id){
		return carroRepository.findOne(id);
	}

}
