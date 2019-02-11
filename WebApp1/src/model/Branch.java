package model;

public class Branch {
	
	private String name , city ;
	private double assets;
	
	
	
	public Branch(String name, String city, double assets) {
		super();
		this.name = name;
		this.city = city;
		this.assets = assets;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getAssets() {
		return assets;
	}
	public void setAssets(double assets) {
		this.assets = assets;
	}
	
	

}
