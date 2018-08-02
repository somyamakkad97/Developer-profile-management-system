package package1;

import java.sql.*;

public class Internships {

	int uID;
	String companyName;
	String startDate;
	String endDate;
	int stipend;
	
	public ResultSet getInternships(int uID){
	//	try {
			String query = "Select * from Internships where uID=" +
					uID +
					";";

			connection connect = new connection();
			ResultSet rs = connect.query(query);

			return rs;
	//	}
	//	catch(SQLException e){
	//		return null;
	//	}
	}

	public int addInternships(int uID, String companyName, String startDate, String endDate, int stipend){
	//	try {
			String query = "Insert into Internships values (" +
						uID +
						",\"" +
						companyName +
						"\",\"" +
						startDate +
						"\",\"" +
						endDate +
						"\"," +
						stipend +
						");";
						

			connection connect = new connection();
			int status = connect.update(query);

			return status;
	//	}
	//	catch(SQLException e){
	//		return null;
	//	}
	}
	
}
