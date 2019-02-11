package model;

public class Employee {
  
	private String id, name , password;
	private Branch branch;
	private double salary;
	
	
	

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		try {
		return id+name+password+branch.getName()+salary;
		
		}
		catch(Exception e) {
			
			return e.getMessage();
		}
	}

	public double getSalary() {
		
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}



	public Employee(String id, String name, String password, Branch branch, double salary) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.branch = branch;
		this.salary = salary;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Branch getBranch() {
		return branch;
	}

	public void setBranch(Branch branch) {
		this.branch = branch;
	}
	
	
}
