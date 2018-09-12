<%@page import="pojo.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>id</th><th>商品名称</th><th>商品价格</th><th>商品数量</th><th>商品产地</th>
		</tr>
		<%
			List<Item> items=(List<Item>)request.getAttribute("items");
			for(Item item:items){
				out.print("<tr>");
				
				out.print("<td>");
				out.print(item.getId());
				out.print("</td>");
				
				
				out.print("<td>");
				out.print(item.getName());
				out.print("</td>");
				
				
				out.print("<td>");
				out.print(item.getPrice());
				out.print("</td>");
				
				out.print("<td>");
				out.print(item.getCount());
				out.print("</td>");
				
				
				out.print("<td>");
				out.print(item.getAddress());
				out.print("</td>");
				
				out.print("</tr>");
			}
			
		
		%>
		
	</table>
	<h1><a href="itemAdd.jsp">返回添加商品</a></h1>

</body>
</html>