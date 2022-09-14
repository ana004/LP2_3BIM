<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	public Integer geraNumero() {
	Random numero = new Random();
	return numero.nextInt(1, 100);
}
%>
<%
	String valor = request.getParameter("valor");
	
	if(valor.isEmpty()) {
		response.sendRedirect(request.getContextPath() + "/jogar.jsp");
	} 
	
	Integer numero = geraNumero();
	if (numero % 2 == 0) {
		
		if(valor.equals("par"))
			out.print("Usuário venceu o jogo: " + numero);
		else
			out.print("Usuário perdeu o jogo: " + numero);
	} else {
		if(valor.equals("impar"))
			out.print("Usuário venceu o jogo: " + numero);
		else
			out.print("Usuário perdeu o jogo: " + numero);
	}
%>
</body>
</html>