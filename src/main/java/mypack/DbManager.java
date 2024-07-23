package mypack;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DbManager {
static Connection  con=null;
 public boolean status=false;
 public String query="";
public DbManager()
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/itdb","root","");
		System.out.println("connected");
		
	}
	
catch(Exception e)
	{
System.out.println(e);
//con=null;
}
}
public boolean DDL()
{
	try
	{
		Statement stmt=con.createStatement();
		stmt.execute(query);
		status=true;
	}
		catch(Exception e)
		{
		e.printStackTrace();
		status=false;
		
		}
		return status;
	

}
public boolean DML()
{
	try
	{
		Statement stmt=con.createStatement();
		stmt.execute(query);
		status=true;
	}
		catch(Exception e)
		{
		e.printStackTrace();
		status=false;
		
		}
		return status;
	

}
public ResultSet DQL()
{
	ResultSet rs=null;
Statement stmt;
try
{
	stmt =con.createStatement();
	rs=stmt.executeQuery(query);
}
catch(Exception e){
	e.printStackTrace();
	rs=null;
}
return rs;
}
}