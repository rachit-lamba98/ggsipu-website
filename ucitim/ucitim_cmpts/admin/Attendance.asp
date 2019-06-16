<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->
<!--#INCLUDE FILE="submit.asp"-->
<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE

%>
<!-- #INCLUDE FILE = "link_admin.asp"-->

<HTML>
	<BODY>


<%
	dim sqltemp,myid

	
	
	objrs.Open "attendence",conn, , , adCmdTable
END IF	

%>


<BR><BR><BR><HR><BR>
	<TABLE border="1">
		<TR>
		    <TD WIDTH = "200" ALIGN="CENTER"><B>ID</B></TD>
		    <TD WIDTH = "200" ALIGN="CENTER"><B>FIRST NAME</B></TD>
		    <TD WIDTH = "200" ALIGN="CENTER"><B>MID NAME</B></TD>
		    <TD WIDTH = "200" ALIGN="CENTER"><B>LAST NAME</B></TD>
		    <TD WIDTH = "200" ALIGN="CENTER"><B>LAST LOGIN (mm/dd/yyyy)</B></TD>
		    
		</TR>
<%
	Do While Not objrs.EOF
		myid = objrs("ID")
	


	sqltemp = "select FIRSTNAME,MIDNAME,LASTNAME from validation where ID='"
	
	sqltemp=sqltemp & myid & "'"
	set objrs1=conn.execute(SQLtemp)


		response.Write "<TR><TD WIDTH=200 ALIGN = center><FONT COLOR=BLUE>" & objrs("ID") & "</FONT></TD>"
		response.Write "<TD WIDTH=200 ALIGN = center><FONT COLOR=BLUE>" & objrs1("FIRSTNAME") & "</FONT></TD>"
		response.Write "<TD WIDTH=200 ALIGN = center><FONT COLOR=BLUE>" & objrs1("MIDNAME") & "</FONT></TD>"
		response.Write "<TD WIDTH=200 ALIGN = center><FONT COLOR=BLUE>" & objrs1("LASTNAME") & "</FONT></TD>"
		response.Write "<TD WIDTH=200 ALIGN = center><FONT COLOR=BLUE>" & objrs("LAST_LOGIN_DATE") & "</FONT></TD>"
		objrs.MoveNext
	Loop
	objrs.Close
	Set objrs = Nothing
	objrs1.Close
	Set objrs1 = Nothing
	conn.Close
	Set conn = Nothing

%>
	</TABLE>
	</BODY>
</HTML>