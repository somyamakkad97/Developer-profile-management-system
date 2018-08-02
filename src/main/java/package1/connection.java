package package1;

import java.sql.*;

class connection {

	Statement stmt;
	Connection con;

	connection(){
		try{
		Class.forName("com.mysql.jdbc.Driver");

		con = DriverManager.getConnection("jdbc:mysql://localhost/DPMS","root","karanagarwal17");
		stmt = con.createStatement();
		}
		catch(SQLException se){
			se.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	ResultSet query(String query) {
		try {
			ResultSet rs = stmt.executeQuery(query);
			return rs;
		}
		catch(SQLException se){
			se.printStackTrace();
			return null;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	int update(String query) {
		try {
			int status = stmt.executeUpdate(query);
			return status;
		}
		catch(SQLException se){
			se.printStackTrace();
			return 0;
		}
		catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}

	void close(){
		try{
		con.close();
		}
		catch(SQLException se){
			se.printStackTrace();
		}
	}
}
