
<%@page import="model.*"%>
<%@ page import="controllers.*" %>


<% 


String method= request.getMethod();
String state = request.getParameter("state");


String eid ="";
String name= "";
String pass=  "";
String bn = "";
String salary= "";

if(method.equals("POST") ){
	
	
	
	switch(state){

case "customerSignIn":
		
		eid = request.getParameter("eid");
	
		pass=  request.getParameter("pass");
		
		
		Customer cm = new Customer(eid,null,pass,null,null);
		
 		CustomerController con = new CustomerController();
 		
 		Customer y= (Customer)con.signIn(cm);
		
		
		try{
		
		
		
		if(y!=null)
			out.print("true");
		
		}
		
		catch(Exception e){
		
			out.print(e.getMessage());
			out.print("false");
		}
		break;
	
case "employeeSignIn":
		
		eid = request.getParameter("eid");
	
		pass=  request.getParameter("pass");
		
		Employee em = new Employee(eid,null,pass, null , 0.0 );
		
		
		
		try{
		EmployeeController controller = new EmployeeController();
		
		
		
		Employee x= (Employee)controller.signIn(em);
		
		
		if(x!=null)
			out.print("true");
		
		}
		
		catch(Exception e){
		
			out.print(e.getMessage());
			out.print("false");
		}
		break;
	
	case "employeeSignUp":
		
		eid = request.getParameter("eid");
		name= request.getParameter("name");
		pass=  request.getParameter("pass");
		
		bn = request.getParameter("bn");
		salary= request.getParameter("salary");

		em = new Employee(eid,name,pass, new Branch(bn,"",234) , Double.parseDouble( salary ) );

		
		
		try{
		EmployeeController controller = new EmployeeController();
		
		
		
		int x=controller.SignUp(em);
		
		
		if(x>0){
		
			out.print("true");}
		
		else { 
			out.print("false"); }
		
		}
		
		catch(Exception e){
		
			
		}
		break;
		
		
case "customerSignUp":
		
		eid = request.getParameter("eid");
		name= request.getParameter("name");
		pass=  request.getParameter("pass");
		
		bn = request.getParameter("street");
		salary= request.getParameter("city");

		Customer c = new Customer(eid,name,pass,bn, salary);
		
		
		try{
		CustomerController controller = new CustomerController();
		
		
		
		int x=controller.SignUp(c);
		
		
		if(x>0){
		
			out.print("true");}
		
		else { 
			out.print("false"); }
		
		}
		
		catch(Exception e){
		
			
		}
		break;
		
		

		
		
	case "test":
		out.print("test reply ");
		break;
	
	
	}
	
	
}



%>