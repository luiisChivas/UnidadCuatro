package boots.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boots.model.Activity;
import boots.service.ActivityService;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityService activityService;
	

	@GetMapping("/all-activities")
	public String allActivities(HttpServletRequest request){
		request.setAttribute("activities", activityService.findAll());
		request.setAttribute("mode", "MODE_ACTIVITIES");
		return "activity";
	}
	
	@GetMapping("/new-activity")
	public String newActivity(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "activity";
	}
	
	@PostMapping("/save-activity")
	public String saveActivity(@ModelAttribute Activity activity, BindingResult bindingResult, HttpServletRequest request){
		activityService.save(activity);
		request.setAttribute("activities", activityService.findAll());
		request.setAttribute("mode", "MODE_ACTIVITIES");
		return "activity";
	}
	
	@GetMapping("/update-activity")
	public String updateActivity(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("activity", activityService.findOne(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "activity";
	}
	
	@GetMapping("/delete-activity")
	public String deleteActivity(@RequestParam int id, HttpServletRequest request){
		activityService.delete(id);
		request.setAttribute("activities", activityService.findAll());
		request.setAttribute("mode", "MODE_ACTIVITIES");
		return "activity";
	}

}
