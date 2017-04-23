package com.sssri.server.db.model;

/**
 * 用户表模型
 * 
 * @author xmj
 *
 */
public class User {
//	 `Employee_id` varchar(20) NOT NULL,
//	  `Pwd` varchar(20) DEFAULT NULL,
//	  `User_type` int(11) DEFAULT NULL,
//	  `User_code` int(11) DEFAULT NULL,
//	  `Sex` varchar(10) DEFAULT NULL,
//	  `Name` varchar(20) DEFAULT NULL,
//	  `Department` varchar(20) DEFAULT NULL,
//	  `Online` int(11) DEFAULT NULL,
//	  `Timekeeping` varchar(20) DEFAULT NULL,
//	  `User_position` int(11) DEFAULT NULL,
//	  PRIMARY KEY (`Employee_id`)
//	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	private String Employee_id;

	private String Pwd;

	private int user_type;

	private int user_code;

	private String sex;

	private String name;
	
	private String department;
	
	private int online_time;
	
	private String timekeeping;
	
	private int user_position;

	public String getEmplyee_id() {
		return Employee_id;
	}

	public void setEmplyee_id(String employee_id) {
		Employee_id = employee_id;
	}

	public String getPwd() {
		return Pwd;
	}

	public void setPsd(String Pwd) {
		this.Pwd = Pwd;
	}

	public int getUser_type() {
		return user_type;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}

	public int getUser_code() {
		return user_code;
	}

	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public int getOnline_time() {
		return online_time;
	}

	public void setOnline_time(int online_time) {
		this.online_time = online_time;
	}

	public String getTimekeeping() {
		return timekeeping;
	}

	public void setTimekeeping(String timekeeping) {
		this.timekeeping = timekeeping;
	}

	public int getUser_position() {
		return user_position;
	}

	public void setUser_position(int user_position) {
		this.user_position = user_position;
	}

	
}
