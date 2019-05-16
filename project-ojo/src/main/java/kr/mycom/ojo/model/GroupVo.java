package kr.mycom.ojo.model;

import java.util.Date;

public class GroupVo {
	private Integer gcode;
	private Integer ucode;
	private Integer rcode;
	private int cnt;
	private String cate;
	private String regdate;
	private String content;
	private String title;
	public Integer getGcode() {
		return gcode;
	}
	public void setGcode(Integer gcode) {
		this.gcode = gcode;
	}
	public Integer getUcode() {
		return ucode;
	}
	public void setUcode(Integer ucode) {
		this.ucode = ucode;
	}
	public Integer getRcode() {
		return rcode;
	}
	public void setRcode(Integer rcode) {
		this.rcode = rcode;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "BoardVo [gcode=" + gcode + ", ucode=" + ucode + ", rcode=" + rcode + ", cnt=" + cnt + ", cate=" + cate
				+ ", regdate=" + regdate + ", content=" + content + ", title=" + title + "]";
	}
}
