package package1;

import java.sql.*;

public class SkillSet {

	int uId;
	String skillName;
	int noOfYears;
	int percentEfficiency;

	public ResultSet getSkillSet(int uID){
		//try {
			String query = "Select * from SkillSet where uID=" +
					uID +
					";";

			connection connect = new connection();
			ResultSet rs = connect.query(query);

			return rs;
	//}
	//	catch(SQLException e){
	//		return null;
	//	}
	}

	public int addSkillSet(int uID,String skillName,int noOfYears,int percentEfficiency){
	//	try {
			String query = "Insert into SkillSet values (" +
						uID +
						",\"" +
						skillName +
						"\"," +
						noOfYears +
						"," +
						percentEfficiency +
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
