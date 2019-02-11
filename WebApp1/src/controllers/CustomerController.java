package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbConnection.DBConnection;
import interfaces.AccountManager;
import model.Branch;
import model.Customer;
import model.Employee;

public class CustomerController implements AccountManager {

	@Override
	public int SignUp(Object o) {
		// TODO Auto-generated method stub
		
		Customer c = (Customer) o;
		
		 System.out.println(c);
			
			
			try(Connection connection= new DBConnection().conn){
				   
			     	
					PreparedStatement statement = connection.prepareStatement("insert into customer values (?,?,?,?,?)");// store proc = G3spEverythingOfLoan
					
					statement.setString(1, c.getId());
					statement.setString(2, c.getName());
					statement.setString(3, c.getPassword());
					statement.setString(4, c.getStreet());
					statement.setString(5, c.getCity());

				    return statement.executeUpdate();

					
					
					
				} catch (Exception ex) {
					ex.printStackTrace();
					System.out.println(ex.getMessage());
		        
				}
			
			return 0;
	}

	@Override
	public Object signIn(Object o) {
		// TODO Auto-generated method stub
		
 Customer e = (Customer) o;
		 
		 System.out.println(e);
		
		
		try(Connection connection= new DBConnection().conn){
			   
		     	
				PreparedStatement statement = connection.prepareStatement("SELECT * from customer where customer_id like ? and customer_password like ?");// store proc = G3spEverythingOfLoan
				
				statement.setString(1, e.getId());
				
				statement.setString(2, e.getPassword());
				

			    ResultSet set = statement.executeQuery();
			    
			    while(set.next() ) {
			    	
			    	Customer y = new Customer(
			    			set.getString(1),
			    			set.getString(2),
			    	    	set.getString(3),
			    			set.getString(4),
			    			set.getString(5)
			    	   );
			    	
			    	
			    	return y;
			    	
			    }

				
				
				
			} catch (Exception ex) {
				ex.printStackTrace();
				System.out.println(ex.getMessage());
	        
			}
		
		
		
		return null;
	}

	@Override
	public int signOut(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

}
