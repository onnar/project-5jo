package kr.mycom.ojo.model;

public class Room_infoVo {
	private int rcode;
	private String name;
	private String addr;
	private String Phone;
	private String rtype;
	private String rprofile;
	private String thumb;
	private String thdetail01;
	private String thdetail02;
	private String thdetail03;
	private String thdetail04;
	private String prc;

	

	public int getRcode() {
		return rcode;
	}

	public void setRcode(int rcode) {
		this.rcode = rcode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getRtype() {
		return rtype;
	}

	public void setRtype(String rtype) {
		this.rtype = rtype;
	}

	public String getRprofile() {
		return rprofile;
	}

	public void setRprofile(String rprofile) {
		this.rprofile = rprofile;
	}

	public String getThumb() {
		return thumb;
	}

	public void setThumb(String thumb) {
		this.thumb = thumb;
	}

	public String getThdetail01() {
		return thdetail01;
	}

	public void setThdetail01(String thdetail01) {
		this.thdetail01 = thdetail01;
	}

	public String getThdetail02() {
		return thdetail02;
	}

	public void setThdetail02(String thdetail02) {
		this.thdetail02 = thdetail02;
	}

	public String getThdetail03() {
		return thdetail03;
	}

	public void setThdetail03(String thdetail03) {
		this.thdetail03 = thdetail03;
	}

	public String getThdetail04() {
		return thdetail04;
	}

	public void setThdetail04(String thdetail04) {
		this.thdetail04 = thdetail04;
	}

	public String getPrc() {
		return prc;
	}

	public void setPrc(String prc) {
		this.prc = prc;
	}

	@Override
	public String toString() {
		return "Room_infoVo [rcode=" + rcode + ", name=" + name + ", addr=" + addr + ", Phone=" + Phone + ", rtype="
				+ rtype + ", rprofile=" + rprofile + ", thumb=" + thumb + ", thdetail01=" + thdetail01 + ", thdetail02="
				+ thdetail02 + ", thdetail03=" + thdetail03 + ", thdetail04=" + thdetail04 + ", prc=" + prc + "]";
	}

}
