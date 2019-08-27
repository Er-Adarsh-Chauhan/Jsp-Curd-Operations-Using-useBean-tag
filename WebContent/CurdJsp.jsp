<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
		<style type="text/css">
				table,td{
					border:1px solid black;border-collapse:collapse;'
				}
				.tag2{
					text-align:center;
				}
		
		</style>
<meta charset="ISO-8859-1">
<title>Curd Jsp Page</title>
</head>
<body>
			<jsp:useBean id="cb" class="org.javabeans.CurdBean" />
				
			<%
				//read query
				String query=request.getParameter("query");
				//open connection
				cb.getConnection();
				//perform operation
				if(!query.toUpperCase().startsWith("SELECT"))
				{
					//for none select operation
					int k=cb.noneSelectOperation(query);
				    out.print("k : "+k+"<br/>");
					if(k==0)
				    	out.println("Table Created."+"<br/>");
					if(k==1)
				    	out.println(k+" Records Inserted.");
					if(k==-1)
						out.println(k+" Records Updated.");
				}
				else{
					//for select operation
					ArrayList al=cb.selectOperation(query);
					Iterator it=al.iterator();
					out.println("<div class='tag2'>");
					out.println("<table>");
					while(it.hasNext())
					{
						String s=(String)it.next();
						StringTokenizer st=new StringTokenizer(s);
						out.print("<tr>");
						while(st.hasMoreElements()){
							out.print("<td>"+st.nextToken()+"</td>");
						}
						out.print("</tr>");
					}
					out.println("</table>");
					out.println("<div");
				}

			%>
</body>
</html>