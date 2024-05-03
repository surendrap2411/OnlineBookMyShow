
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Customer Table</title>
    <style>
    
    body{
    background-color:#e8f0fe;
    }
    .success{
    margin:0 auto;
    height:100px;
    width:100%;
    background-color:green;
    color:black;
    margin-top:200px;
    
    }
    .h1{
     margin-top:10%;
    margin-left:30%;
    }
    
    .next{
    padding:5px 40px;
    border: 1px solid rgb(219, 219, 219);
    outline: none;
    color: rgb(40, 116, 240 );
    font-weight: 500px;
    border-radius: 2px;
    height: 32px;
    cursor: pointer;
    font-size: 16px;
    font-family: Arial, Helvetica, sans-serif;
    box-shadow: -1px -1px 10px rgb(54, 54, 54),
    1px 1px 10px rgb(54, 54, 54);
    letter-spacing: .1px;
    margin-left:40%;

    }
    </style>
   </head>
<body>
<div class="success">
<div class="h1"><h1>LOGINNN SUCCESSFULLY..</h1></div>
<h3 style="margin-left:30%;">Now if you want to book a movie then click here 
    <button class="next">
         <a href="MovieBookTable.jsp">NEXT-->
        </a>
    </button>
</h3>

</div>
<%

String fname=request.getParameter("fname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String dob=request.getParameter("dob");
String address=request.getParameter("address");


Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/ movies_info";
String uname="root";
String pass="root";

Connection con = DriverManager.getConnection(url,uname,pass);

String sql="insert into  information (fname,email,password,dob,address)values (?,?,?,?,?)";
PreparedStatement stmt=con.prepareStatement(sql);  
stmt.setString(1, fname);
stmt.setString(2, email);
stmt.setString(3,password);
stmt.setString(4,dob);
stmt.setString(5,address);
stmt.executeUpdate();
%>
</body>
</html>