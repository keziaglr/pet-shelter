package model;

public class Admin extends User{
	private int user_id;
	private int admin_salary;
	private int admin_bonus;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getAdmin_salary() {
		return admin_salary;
	}
	public void setAdmin_salary(int admin_salary) {
		this.admin_salary = admin_salary;
	}
	public int getAdmin_bonus() {
		return admin_bonus;
	}
	public void setAdmin_bonus(int admin_bonus) {
		this.admin_bonus = admin_bonus;
	}
	public Admin(int user_id, int admin_salary, int admin_bonus) {
		super();
		this.user_id = user_id;
		this.admin_salary = admin_salary;
		this.admin_bonus = admin_bonus;
	}
	
	public void calculateBonus() {
		admin_bonus = admin_salary / 10000 * 2;
	}
	
}
