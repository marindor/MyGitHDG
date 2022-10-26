package db;

import java.sql.Date;

public class VO {
	
	private String id;
	private String pwd;
	private String name;
	private String email;
	private Date joinDate;
	
	//ctrl + shift + F10 으로 getter, setter 자동생성 가능
	public VO() {
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Date getJoinDate() {
		return joinDate;
	}


	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
	
	
}
