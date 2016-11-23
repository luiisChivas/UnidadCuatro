package boots.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boots.model.Carro;
import boots.service.CarroService;


@Controller
public class CarroController {
	
	@Autowired
	private CarroService carroService;
	
	@GetMapping("/all-cars")
	public String allCars(HttpServletRequest request){
		request.setAttribute("cars", carroService.findAll());
		request.setAttribute("mode", "MODE_CARS");
		return "carro";
	}
	
	@GetMapping("/new-car")
	public String newCar(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "carro";
	}
	
	@PostMapping("/save-car")
	public String saveCar(@ModelAttribute Carro carro, BindingResult bindingResult, HttpServletRequest request){
		carroService.save(carro);
		request.setAttribute("cars", carroService.findAll());
		request.setAttribute("mode", "MODE_CARS");
		return "carro";
	}
	
	@GetMapping("/update-car")
	public String updateCar(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("car", carroService.findOne(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "carro";
	}
	
	@GetMapping("/delete-car")
	public String deleteCar(@RequestParam int id, HttpServletRequest request){
		carroService.delete(id);
		request.setAttribute("cars", carroService.findAll());
		request.setAttribute("mode", "MODE_CARS");
		return "carro";
	}

}
