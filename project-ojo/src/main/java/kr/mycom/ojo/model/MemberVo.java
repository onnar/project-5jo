package kr.mycom.ojo.model;

import java.util.Date;

public class MemberVo {

	private int ucode;
	private String uid;
	private String pwd;
	private String name;
	private String phone;
	private String gender;
	private Date regDate;
	private String profile;
	private String email;

	public MemberVo() {
	};

	public MemberVo(String uid, String pwd, String name, String email, String phone, String gender, Date regDate, String profile) {
		this.uid = uid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.regDate = regDate;
		this.profile = profile;
	}

	public int getUcode() {
		return ucode;
	}

	public void setUcode(int ucode) {
		this.ucode = ucode;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
