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

@Entity(name="activities")
public class Activity implements Serializable{
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column (name="encounter")	private int encounter;
	@Column (name="sequence_no") 	private int sequence_no;
	@Column (length = 9) 	private String code;
	@Column (length = 5) 	private String modifier;
	@Column (name="payer_type") private int payer_type;
	@Column (name="post_user") private int post_user;
	@Column (length = 255) 	private String memo;
	@Column (name="pay_amount") private int pay_amount;
	
	
	
	
	
	public Activity(int encounter, int sequence_no, String code, String modifier, int payer_type, int post_user,
			String memo, int pay_amount) {
		super();
		this.encounter = encounter;
		this.sequence_no = sequence_no;
		this.code = code;
		this.modifier = modifier;
		this.payer_type = payer_type;
		this.post_user = post_user;
		this.memo = memo;
		this.pay_amount = pay_amount;
	}



	public Activity() {
		this(0, 0,"","",0,0,"",0);
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getEncounter() {
		return encounter;
	}



	public void setEncounter(int encounter) {
		this.encounter = encounter;
	}



	public int getSequence_no() {
		return sequence_no;
	}



	public void setSequence_no(int sequence_no) {
		this.sequence_no = sequence_no;
	}



	public String getCode() {
		return code;
	}



	public void setCode(String code) {
		this.code = code;
	}



	public String getModifier() {
		return modifier;
	}



	public void setModifier(String modifier) {
		this.modifier = modifier;
	}



	public int getPayer_type() {
		return payer_type;
	}



	public void setPayer_type(int payer_type) {
		this.payer_type = payer_type;
	}



	public int getPost_user() {
		return post_user;
	}



	public void setPost_user(int post_user) {
		this.post_user = post_user;
	}



	public String getMemo() {
		return memo;
	}



	public void setMemo(String memo) {
		this.memo = memo;
	}



	public int getPay_amount() {
		return pay_amount;
	}



	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}



	@Override
	public String toString() {
		return "Activity [id=" + id + ", encounter=" + encounter + ", sequence_no=" + sequence_no + ", code=" + code
				+ ", modifier=" + modifier + ", payer_type=" + payer_type + ", post_user=" + post_user + ", memo="
				+ memo + ", pay_amount=" + pay_amount + "]";
	}


 
	
	
	
	
}