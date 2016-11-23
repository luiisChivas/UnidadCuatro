package boots.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="carros")
public class Carro implements Serializable{
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column (length=45)
	private String name;
	@Column (name="model")
	private int model;
	@Temporal(TemporalType.DATE)
	@Column (name="date_created")
	private Date dateCreated;
	
	public Carro(String name, int model, Date dateCreated) {
		super();
		this.name = name;
		this.model = model;
		this.dateCreated = dateCreated;
	}
	
	public Carro() {
		this("", 0 ,new Date());
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	
	public int getModel() {
		return model;
	}

	public void setModel(int model) {
		this.model = model;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	@Override
	public String toString() {
		return "Carro [id=" + id + ", name=" + name + ", description=" + model + ", dateCreated=" + dateCreated
				+ "]";
	}
	
	
}
	