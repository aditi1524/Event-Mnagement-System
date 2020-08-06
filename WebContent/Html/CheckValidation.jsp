<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import = "java.sql.*"%>
  <%@ page import = "javax.sql.*"%>
  <%@page import= "javax.swing.JOptionPane"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String ename=request.getParameter("email");
String password=request.getParameter("password");
String uni=request.getParameter("text");
String mob=request.getParameter("phnNo");
String event=request.getParameter("event");
String gen=request.getParameter("gender");
out.println(name);
out.println(fname);
out.println(mname);
out.println(ename);
out.println(password);
out.println(uni);
out.println(mob);
out.println(event);
out.println(gen);

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aditi","aditi");
	Statement st = conn.createStatement();
		ResultSet rs;
	int i = st.executeUpdate("insert into tbl1 values('"+name+"','"+fname+"','"+mname+"','"+ename+"','"+password+"','"+uni+"','"+mob+"','"+event+"','"+gen+"')");
	out.println("Succesfully Registered in an event");
	if(i!=0) {
		JOptionPane.showMessageDialog(null,"success");
		response.sendRedirect("Form.html");
	}else {
		JOptionPane.showMessageDialog(null,"success");
		response.sendRedirect("CheckValidation.jsp");

	}
	}catch(Exception e) {
    out.println(e);	}
%>

</body>
</html>
