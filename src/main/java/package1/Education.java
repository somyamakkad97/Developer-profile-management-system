package package1;

import java.sql.*;

public class Education {

	int uID;
	double tenthpercent;
	double twelfthpercent;
	String board;
	int yearOfPassing;
	String collegeName;
	int currentSem;
	double CGPA;

	public ResultSet getEducation(int uID){
		//	try {
				String query = "Select * from Education where uID=" +
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

		public int addEducation(int uID, double tenthpercent, double twelfthpercent, String board, int yearOfPassing, String collegeName, int currentSem,double CGPA){
		//	try {
				String query = "Insert into Education values (" +
							uID +
							"," +
							tenthpercent +
							"," +
							twelfthpercent +
							",\"" +
							board +
							"\"," +
							yearOfPassing +
							",\"" +
							collegeName +
							"\"," +
							currentSem +
							"," +
							CGPA +
							");";
							

				connection connect = new connection();
				int status = connect.update(query);

				return status;
				
		}
		public int updateEducation(int uID, double tenthpercent, double twelfthpercent, String board, int yearOfPassing, String collegeName, int currentSem,double CGPA){
			String query = " Update Education set tenthpercent="+
								tenthpercent+
								"," +
								"twelfthpercent=" +
								twelfthpercent +
								",board=\"" +
								board +
								"\",yearOfPassing=" +
								yearOfPassing +
								"," +
								"collegeName=\"" +
								collegeName +
								"\",currentSem=" +
								currentSem +
								",CGPA="+
								CGPA+
								"where uID=" +
								uID+
								";";
			
			connection connect = new connection();
			int status = connect.update(query);

			return status;
					
		}
		//	}
		//	catch(SQLException e){
		//		return null;
		//	}
		}
