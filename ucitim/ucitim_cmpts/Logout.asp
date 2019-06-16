<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("login.asp")
ELSE
%>


<HTML>
<HEAD>
<TITLE>Logout</TITLE></HEAD>

<BODY BACKGROUND ="logo1.gif" ALIGN ="center">
	Thank You! "    user name    " for your patient visit.We look for your cooperation
	Keep visiting....<% =Session("login_id")%>


Session id is 
<% 
	Response.Write(Session("login_id"))
	Session.Abandon 
	
Response.Redirect "login.asp"
%>
</BODY>
</HTML>
<%
END IF
%>