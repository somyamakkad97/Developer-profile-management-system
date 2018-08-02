package package1;

import java.sql.*;

public class Certification {
	
	int uID;
	String skillName;
	String issueDate;
	String organisation;
	String courseName;
	
	public ResultSet getCertificate(int uID){
		//try {
			String query = "Select * from Certification where uID=" + 
					uID +
					";";
			connection connect = new connection();	
			ResultSet rs = connect.query(query);
			
			return rs;
		//}
		//catch(SQLException e){
		//	return null;
		//}
	}
	
	public int addCertificate(int uID, String skillName, String issueDate, String organisation, String courseName){
		//try {
			String query = "Insert into Certification values (" +
						uID + 
						",\"" +
						skillName +
						"\",\"" + 
						issueDate + 
						"\",\"" +
						organisation + 
						"\",\"" + 
						courseName +
						"\");";
					
			
			connection connect = new connection();	
			int status= connect.update(query);
			
			return status;
		//}
		//catch(SQLException e){
		//	return null;
		//}
	}
}
