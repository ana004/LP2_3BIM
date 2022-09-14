<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
  String dia = request.getParameter("dia");
	String mes = request.getParameter("mes");
	String ano = request.getParameter("ano");
	
	if(dia.isEmpty() || mes.isEmpty() || ano.isEmpty()) {
		response.sendRedirect(request.getContextPath() + "/dada.jsp");
	}
	else {
		Integer dia1 = Integer.parseInt(dia);
		Integer mes1 = Integer.parseInt(mes);
		Integer ano1 = Integer.parseInt(ano);
		
		LocalDate data = LocalDate.of(ano1, mes1, dia1);
		out.print("<table>");
		for(int i = 1; i <=10; ++i) {
			LocalDate data2 = data.minusDays(i);
			out.print("<tr><td>" + data2 + "<td><tr>");
		}
		out.print("</table>");
	}
%>
</body>
</html>