package dbConnection;



import java.sql.Connection;
import java.sql.DriverManager;




public class DBConnection {
//	private static final Logger logger=LoggerFactory.getLogger(DBConnection.class);

	public Connection conn;
	DBConnection instance=null;

	public DBConnection() {
		try {
//				Class.forName("oracle.jdbc.OracleDriver");
//				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "hr", "mymy");
				// Load the SQLServerDriver class, build the
				// connection string, and get a connection
				//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				conn = DriverManager.getConnection("jdbc:sqlserver://vNTDACLSCRAPR01:1433;"
						+ "databaseName=BankAccountMNG;user=bankaccountmng_dbo;password=bankaccountmng_dbo123");
			
			//conn.close();		
		} catch (Exception e) {
			
		}
	}
 
	
}
	
	

	
	

