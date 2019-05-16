package kr.mycom.ojo.model;

public class ReviewVo {
	private String rvcode;
	private String review;
	private String score;
	private String regdate;
	private String image;

	public ReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewVo(String rvcode, String review, String score, String regdate, String image) {
		super();
		this.rvcode = rvcode;
		this.review = review;
		this.score = score;
		this.regdate = regdate;
		this.image = image;
	}

	public String getRvcode() {
		return rvcode;
	}

	public void setRvcode(String rvcode) {
		this.rvcode = rvcode;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
