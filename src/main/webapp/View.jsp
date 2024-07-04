<%@ page import="java.util.*" %>
<%@ page import="com.model.Student" %>
<%@ page import="com.model.StuDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>MultiPage Info</title>
<style>
    table {
        width: 50%;
        border-collapse: collapse;
        
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align:center;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
</style>
</head>
</head>
<body><center>

<%
String pgid =request.getParameter("page");
int pid =Integer.parseInt(pgid);
int id=Integer.parseInt(pgid);
int total=5;
if(id==1){}
else{
	id=id-1;
	id=id*total+1;
}


List<Student>list=StuDao.getRecords(id,total);
out.println("<h2> PageNo: "+pid+"</h2>");
out.println("<table><tr><th>SID </th><th>Name</th><th>City</th><th>Course </th><th>Marks</th></tr><br>");


for(Student s:list){
	out.println("<tr><td>"+s.getSid() +"</td><td>"+s.getName() +
			"</td><td>"+s.getCity() +"</td><td>"+s.getCourse() +"</td><td>"+s.getMarks() +"</td></tr>");
}out.println("</table><br><br>");

%>
<!--  
<button><a href="View.jsp?page=1">1.. </a></button>
<button><a href="View.jsp?page=2">2.. </a></button>
<button><a href="View.jsp?page=3">3.. </a></button> -->
<h4>View Page <a href="View.jsp?page=1">1.. </a></h4>
<h4>View Page <a href="View.jsp?page=2">2.. </a></h4>
<h4>View Page <a href="View.jsp?page=3">3.. </a></h4>





</center>
</body>
</html>