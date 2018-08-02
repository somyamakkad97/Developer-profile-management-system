package package1;

import java.sql.*;

public class Login {

	int uID;
	String username;
	String password;
	
	int getUser(String username, String password) {
		try {
			String query = "Select * from Login where username=\"" + 
					username + 
					"\" and password=\"" + 
					password + 
					"\"";
			connection connect = new connection();	
			ResultSet rs = connect.query(query);
			
			int i = 0;
			while (rs.next())
				i++;
			rs.first();
			if(i == 1){
				int uID = rs.getInt("uID");
				return uID;
			}
			return 0;
		}
		catch(SQLException e){
			return 0;
		}
	}
	
	int addUser(String username, String password){
		try{
			String query = "Select max(uID) from Login";
					
			connection connect = new connection();
			ResultSet rs = connect.query(query);
			rs.next();
			int uID = rs.getInt(1);
			uID ++;
			
			query = "insert into Login values(" + 
					uID + 
					",\"" +
					username +
					"\",\"" +
					password +
					"\");";
					
			connect.update(query);
			
			Details d = new Details();
			d.addDetails(uID, null, null, 0, null, null, null, null,null);
			
			Education e = new Education();
			e.addEducation(uID, 0, 0, null , 0, null, 0, 0);
			
			return uID;
		}
		catch(SQLException e){
			return 0;
		}
	}
}
