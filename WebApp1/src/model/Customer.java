package model;

public class Customer {

	private String id, name , password,street,city;
	
	

	public Customer(String id, String name, String password, String street, String city) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.street = street;
		this.city = city;
	}
	
	

	@Override
	public String toString() {
		
		try {
		return "Customer [id=" + id + ", name=" + name + ", password=" + password + ", street=" + street + ", city="
				+ city + "]";
		
		}
		catch (Exception e) {
			return "";
		}
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

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	
	
	
	
}
