package boots.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import boots.dao.ActivityRepository;
import boots.model.Activity;

@Service @Transactional
public class ActivityService {
	private final ActivityRepository activityRepository;
	
	public ActivityService(ActivityRepository activityRepository){
		super();
		this.activityRepository=activityRepository;
	}
	
	public List<Activity> findAll(){
		List<Activity> activities = new ArrayList<Activity>();
		for(Activity activity : activityRepository.findAll()){
			activities.add(activity);
		}
		return activities;
	}
	
	public void save(Activity activity){
		activityRepository.save(activity);
	}
	
	public void delete(int id){
		activityRepository.delete(id);
	}
	
	public Activity findOne (int id){
		return activityRepository.findOne(id);
	}

}
