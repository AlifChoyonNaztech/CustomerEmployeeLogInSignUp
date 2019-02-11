package controllers;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import dbConnection.DBConnection;
import interfaces.*;
import model.Branch;
import model.Employee;
public class EmployeeController implements AccountManager {

	@Override
	public int SignUp(Object o) {
		// TODO Auto-generated method stub
		
		 Employee e = (Employee) o;
		 
		 System.out.println(e);
		
		
		try(Connection connection= new DBConnection().conn){
			   
		     	
				PreparedStatement statement = connection.prepareStatement("insert into employee values (?,?,?,?,?)");// store proc = G3spEverythingOfLoan
				
				statement.setString(1, e.getId());
				statement.setString(2, e.getName());
				statement.setString(3, e.getPassword());
				statement.setString(4, e.getBranch().getName());
				statement.setInt(5, (int)e.getSalary() );

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
		
 Employee e = (Employee) o;
		 
		 System.out.println(e);
		
		
		try(Connection connection= new DBConnection().conn){
			   
		     	
				PreparedStatement statement = connection.prepareStatement("select * from employee where employee_id LIKE ? and employee_password LIKE ?");// store proc = G3spEverythingOfLoan
				
				statement.setString(1, e.getId());
				
				statement.setString(2, e.getPassword());
				

			    ResultSet set = statement.executeQuery();
			    
			    while(set.next() ) {
			    	
			    	Employee y = new Employee(
			    			set.getString(1),
			    			set.getString(2),
			    	    	set.getString(3),
			    			new Branch(	set.getString(4), "",0 ) ,
			    			set.getDouble(5)
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
