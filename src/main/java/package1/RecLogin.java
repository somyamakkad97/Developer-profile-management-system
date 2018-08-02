package package1;

import java.sql.*;

public class RecLogin {
	
	int recID;
	String Username;
	String Password;
	
	
	int getRecruiter(String Username, String Password) {
		try {
			String query = "Select * from RecLogin where username=\"" +
					Username + 
					"\" and password=\"" + 
					Password +
					"\"";
			
			connection connect = new connection();
			ResultSet rs = connect.query(query);
			
			int i = 0;
			while (rs.next())
				i++;
			
			rs.first();
			
			if(i == 1){
				int recID = rs.getInt("recID");
				return recID;
			}
			
			return 0;
		}
		catch(SQLException e){
			return 0;
		}
	}

	int addRecruiter(String Username, String Password){
		try{
			String query = "Select max(recID) from RecLogin;";
					
			connection connect = new connection();
			ResultSet rs = connect.query(query);
			rs.first();
			int recID = rs.getInt(1);
			recID ++;
			
			query = "insert into RecLogin values(" + 
					recID + 
					",\"" +
					Username +
					"\",\"" +
					Password +
					"\");";
					
			connect.update(query);
			
			query = "insert into RecDetails values(" +
					recID + 
					",null,null,null,null,null);"
					;
			
			connect.update(query);
			
			RecDetails r = new RecDetails();
			r.addRecDetails(recID, Username, null, null, null, null);
			
			return recID;
		}
		catch(SQLException e){
			return 0;
		}
	}
	
}
