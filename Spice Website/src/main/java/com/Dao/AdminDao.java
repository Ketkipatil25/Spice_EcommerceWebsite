package com.Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.*;
public class AdminDao {
static final String DB_URL ="jdbc:mysql://localhost/practice";
static final String USER = "root";
static final String PASS="Sjp@2003";
public static void main(String args[]) throws SQLException
{
Connection conn = null;
Statement stmt = null;
//char c='y';
int n;
try{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("connecting to the database");
conn=DriverManager.getConnection(DB_URL,USER,PASS);
stmt = conn.createStatement();
do
{
System.out.println("Menu:\n1.Insert\n2.Display\n3.Update\n4.Delete");
System.out.println("Enter choice:");
BufferedReader b=new BufferedReader(new InputStreamReader(System.in));
int a=Integer.parseInt(b.readLine());
switch(a)
{
case 1:System.out.println("Inserting :");

String query = " insert into admin(product_id,product_name,product_price,status)"+" values(?,?,?,?) ";

System.out.println("Enter product ID:");
int product_id=Integer.parseInt(b.readLine());
System.out.println("Enter product product_name:");
String product_name=b.readLine();
System.out.println("Enter product price:");
int product_price=Integer.parseInt(b.readLine());
System.out.println("Enter status:");
String status=(b.readLine());

PreparedStatement prep_stmt;
prep_stmt=conn.prepareStatement(query);
prep_stmt.setInt(1,product_id);
prep_stmt.setString(2,product_name);
prep_stmt.setInt(3,product_price);
prep_stmt.setString(4,status);
prep_stmt.execute();
//conn.close();
//stmt.executeUpdate(query);
break;

case 2:System.out.println("Database contains:");
query = " select * from admin " ;
int count = 0;
ResultSet rs=stmt.executeQuery(query);
System.out.println("Product  : \t Product ID \t Product product_name \t Product price \t\t Status \n");
while(rs.next())
{

product_id=rs.getInt("product_id");
product_price=rs.getInt("product_price");
product_name=rs.getString("product_name");
status=rs.getString("status");


String output = "Product %d: \t %d \t\t %s \t\t %d \t\t %s";
System.out.println(String.format(output, ++count,product_id, product_name, product_price, status));

}
//conn.close();
break;
case 3:System.out.println("Updating:");

System.out.println("Enter product_id to be updated:");
product_id=Integer.parseInt(b.readLine());
System.out.println("Want to update status?");
int c=Integer.parseInt(b.readLine());
if(c==1)
{
System.out.println("Enter status:");
status=b.readLine();

query = " update admin set status=?" + " where product_id= ?";
prep_stmt=conn.prepareStatement(query);
prep_stmt.setString(1, status);

prep_stmt.setInt(2,product_id);
prep_stmt.execute();
}
System.out.println("Want to update product_price?");
c=Integer.parseInt(b.readLine());
if(c==1)
{
System.out.println("Enter product_price:");
product_price=Integer.parseInt(b.readLine());
query = " update admin set product_price=?" + " where product_id= ?";
prep_stmt=conn.prepareStatement(query);
prep_stmt.setInt(1, product_price);
prep_stmt.setInt(2,product_id);
prep_stmt.execute();
}

break;
case 4:System.out.println("Deleting:");
System.out.println("Enter product_id to be deleted:");

product_id=Integer.parseInt(b.readLine());
query = " delete from admin where product_id= ?";
prep_stmt=conn.prepareStatement(query);
prep_stmt.setInt(1,product_id);
prep_stmt.execute();
//conn.close();
break;
default:System.out.println("Wrong input!!");

}
System.out.println("continue\n1.Yes\n2.No");
n=Integer.parseInt(b.readLine());

}while(n==1);
conn.close();
}
catch(Exception e)
{
System.out.println(e);
}
}
}