package kr.mycom.ojo.model;

public class Room_optVo {
	private String air;
	private String projector;
	private String board;
	private String wifi;
	private String drink;
	private String smoking;
	private String food;
	private String printer;

	public Room_optVo() {
		super();
	}

	public Room_optVo(String air, String projector, String board, String wifi, String drink, String smoking, String food,
			String printer) {
		super();
		this.air = air;
		this.projector = projector;
		this.board = board;
		this.wifi = wifi;
		this.drink = drink;
		this.smoking = smoking;
		this.food = food;
		this.printer = printer;
	}

	public String getAir() {
		return air;
	}

	public void setAir(String air) {
		this.air = air;
	}

	public String getProjector() {
		return projector;
	}

	public void setProjector(String projector) {
		this.projector = projector;
	}

	public String getBoard() {
		return board;
	}

	public void setBoard(String board) {
		this.board = board;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public String getDrink() {
		return drink;
	}

	public void setDrink(String drink) {
		this.drink = drink;
	}

	public String getSmoking() {
		return smoking;
	}

	public void setSmoking(String smoking) {
		this.smoking = smoking;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public String getPrinter() {
		return printer;
	}

	public void setPrinter(String printer) {
		this.printer = printer;
	}

	@Override
	public String toString() {
		return "Room_opt [air=" + air + ", projector=" + projector + ", board=" + board + ", wifi=" + wifi + ", drink="
				+ drink + ", smoking=" + smoking + ", food=" + food + ", printer=" + printer + "]";
	}

}
