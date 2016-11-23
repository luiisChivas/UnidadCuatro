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
	@Column (name="sequence_no") 	private int sequenceNo;
	@Column (length = 9) 	private String code;
	@Column (length = 5) 	private String modifier;
	@Column (name="payer_type") private int payerType;
	@Column (name="post_user") private int postUser;
	@Column (length = 255) 	private String memo;
	@Column (name="pay_amount") private int payAmount;
	
	
	
	
	
	public Activity(int encounter, int sequenceNo, String code, String modifier, int payerType, int postUser,
			String memo, int payAmount) {
		super();
		this.encounter = encounter;
		this.sequenceNo = sequenceNo;
		this.code = code;
		this.modifier = modifier;
		this.payerType = payerType;
		this.postUser = postUser;
		this.memo = memo;
		this.payAmount = payAmount;
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



	public String getMemo() {
		return memo;
	}



	public void setMemo(String memo) {
		this.memo = memo;
	}



	public int getSequenceNo() {
		return sequenceNo;
	}



	public void setSequenceNo(int sequenceNo) {
		this.sequenceNo = sequenceNo;
	}



	public int getPayerType() {
		return payerType;
	}



	public void setPayerType(int payerType) {
		this.payerType = payerType;
	}



	public int getPostUser() {
		return postUser;
	}



	public void setPostUser(int postUser) {
		this.postUser = postUser;
	}



	public int getPayAmount() {
		return payAmount;
	}



	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}



	@Override
	public String toString() {
		return "Activity [id=" + id + ", encounter=" + encounter + ", sequenceNo=" + sequenceNo + ", code=" + code
				+ ", modifier=" + modifier + ", payerType=" + payerType + ", postUser=" + postUser + ", memo=" + memo
				+ ", payAmount=" + payAmount + "]";
	}

	
}