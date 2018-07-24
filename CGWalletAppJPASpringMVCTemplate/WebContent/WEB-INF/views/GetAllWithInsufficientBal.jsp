<%@page import="com.cg.mypaymentapp.controllers.CustomerActionController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.head {
background: aqua;
border: thin;
}
</style>
</head>
<body bgcolor="AFD4D5">
<div align="center">
	<div align="left" >
			<a href="">Menu Page</a>
		</div>
		
		<div align="center" class="head"><h1><font color="blue"> All Customers Details with Insufficient Balance Are:</font></h1>
		<hr>
		</div>
		
		<table>
		<tr><td><b>Name  </b></td><td><b>Mobile No.  </b></td><td><b>Balance  </b></td></tr>
		<c:forEach var="Customers" items="${customers}">
		<tr>
		<td>${Customers.name}</td>
		<td>${Customers.mobileNo}</td>
		<td>${Customers.wallet.balance}</td>
		</tr>
		</c:forEach>
		</table>
</div>
</body>
</body>
</html>