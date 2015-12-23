package model;

import javax.validation.constraints.Size;

public class Student {
	private int id;
	
	@Size(min=3, max=30)
	private String firstName;
	
	@Size(min=3, max=30)
	private String lastName;
	
	@Size(min=1, max=3)
	private String age;
	
	@Size(min=1, max=1)
	private String sex;
	
	@Size(min=10, max=30)
	private String username;

	@Size(min=10, max=30)
	private String password;
	
	public Student() {
		super();
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "Student [id=" + id + 
				"], fullName=" + firstName + lastName + 
				", sex=" + sex + 
				", age=" + age +
				", username=" + username
				+ "]";
	}
}
