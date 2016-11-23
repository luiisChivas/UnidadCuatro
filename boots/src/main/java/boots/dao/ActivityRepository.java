package boots.dao;


import org.springframework.data.repository.CrudRepository;

import boots.model.Activity;

public interface ActivityRepository extends CrudRepository<Activity, Integer> {

}
