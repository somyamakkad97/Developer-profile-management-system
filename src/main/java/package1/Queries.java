package package1;

import java.sql.*;

public class Queries {
	
	public int[] merge(int main[], int a[]){
		int i = 0;
		int j = 0;
		int k = 0;
		int merged[] = new int[100];
		while(main[i] != 0 && a[j] != 0){
			if(main[i] == a[j]){
				merged[k] = main[i];
				k++;
				i++;
				j++;
			}
			else if(main[i] < a[j]){
				i++;
			}
			else{
				j++;
			}
		}
		
		return merged;
	}

	public int[] runQuery(int certificate, int intern, int project, int research, String skill){
		try{
			int main[] = new int[100];
			connection connect = new connection();
			
			
			if(certificate != 0){
				String query = "Select distinct uID from Certification order by uID;";
				ResultSet rs = connect.query(query);
				
				int a[] = new int[100];
				int i = 0;
				if(rs == null){
					return null;
				}
				while(rs.next()){
					a[i] = rs.getInt(1);
					i++;
				}
				if(main[0] == 0){
					int k = 0;
					while(a[k] != 0){
						main[k] = a[k];
						k++;
					}
				}
				else{
					main = merge(main,a);
				}
			}
			
			if(intern != 0){
				String query = "Select distinct uID from Internships order by uID;";
				ResultSet rs = connect.query(query);
				
				int a[] = new int[100];
				int i = 0;
				if(rs == null){
					return null;
				}
				while(rs.next()){
					a[i] = rs.getInt(1);
					i++;
				}
				if(main[0] == 0){
					int k = 0;
					while(a[k] != 0){
						main[k] = a[k];
						k++;
					}
				}
				else{
					main = merge(main,a);
				}
			}
			
			if(project != 0){
				String query = "Select distinct uID from Projects order by uID;";
				ResultSet rs = connect.query(query);
				
				int a[] = new int[100];
				int i = 0;
				if(rs == null){
					return null;
				}
				while(rs.next()){
					a[i] = rs.getInt(1);
					i++;
				}
				if(main[0] == 0){
					int k = 0;
					while(a[k] != 0){
						main[k] = a[k];
						k++;
					}
				}
				else{
					main = merge(main,a);
				}
			}
			
			if(research != 0){
				String query = "Select distinct uID from Research order by uID;";
				ResultSet rs = connect.query(query);
				
				int a[] = new int[100];
				int i = 0;
				if(rs == null){
					return null;
				}
				while(rs.next()){
					a[i] = rs.getInt(1);
					i++;
				}
				if(main[0] == 0){
					int k = 0;
					while(a[k] != 0){
						main[k] = a[k];
						k++;
					}
				}
				else{
					main = merge(main,a);
				}
			}
			
			if(skill != null){
				String query = "Select distinct uID from SkillSet where skillName=\"" +
								skill +
								"\" order by uID;";
				ResultSet rs = connect.query(query);
				
				int a[] = new int[100];
				int i = 0;
				if(rs == null){
					return null;
				}
				while(rs.next()){
					a[i] = rs.getInt(1);
					i++;
				}
				if(main[0] == 0){
					int k = 0;
					while(a[k] != 0){
						main[k] = a[k];
						k++;
					}
				}
				else{
					main = merge(main,a);
				}
			}
			return main;
		}
		catch(SQLException se){
			se.printStackTrace();
			return null;
		}
	}
}
