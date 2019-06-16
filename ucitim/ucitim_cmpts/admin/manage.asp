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


<%
	dim sqltemp
	
	
	
	sqltemp = "select * from validation where ROLE <> 'Administrator'"
	set objrs=conn.execute(SQLtemp)
	

%>

<HTML>
	<BODY>
<FORM METHOD = "post" ACTION = "accdel.asp">
<BR><BR><BR><HR><BR>

<% if (Session("ErrMsg") = 21) then %><FONT COLOR = "RED">
<% response.write "TRY AGAIN" %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 22) then %><FONT COLOR = "RED">
<% response.write "TRY AGAIN" %></FONT>
<% end if %>

	<TABLE border=1>
		<TR>
			<TD WIDTH = "150" ALIGN="center"><B>ID</B></TD>
			<TD WIDTH = "150" ALIGN="center"><B>PASSWORD</B></TD>
		    	<TD WIDTH = "100" ALIGN="center"><B>FIRST</B></TD>
		    	<TD WIDTH = "100" ALIGN="center"><B>MID</B></TD>
		    	<TD WIDTH = "100" ALIGN="center"><B>LAST</B></TD>
			<TD WIDTH = "100" ALIGN="center"><B>ROLE</B></TD>
			<TD WIDTH = "200" ALIGN="center"><B>DELETE ACCOUNT?</B></TD>
		</TR></TABLE>


<TABLE BORDER=1>


<% do while Not objrs.EOF %>	          		   
<TR>
		    <TD WIDTH="150" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("ID")%></FONT></TD>
		    <TD WIDTH="150" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("PASSWRD")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("FIRSTNAME")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("MIDNAME")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("LASTNAME")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("ROLE")%></FONT></TD>		 	   
		    <TD WIDTH="200" ALIGN=center><INPUT TYPE = "submit" NAME ="accdel<%Response.Write objrs.Fields("ID")%>" value="Delete Account"></TD>
</TR>
<% objrs.MoveNext %>
	    	     
<% Loop %>

<%
	objrs.Close
	Set objrs = Nothing

	
	conn.Close
	Set conn = Nothing
%>

<%
	dim sqltemp1
	
	
	
	sqltemp1 = "select * from validation where ROLE = 'Administrator'"
	set objrs1=con.execute(SQLtemp1)	

	Do While Not objrs1.EOF

%>
<TABLE BORDER=1>
<%
		response.Write "<TR><TD WIDTH=150 ALIGN = center><FONT COLOR=BLUE>" & objrs1("ID") & "</FONT></TD>"
		response.Write "<TD WIDTH=150 ALIGN = center><FONT COLOR=BLUE>" & objrs1("PASSWRD") & "</FONT></TD>"
		response.Write "<TD WIDTH=100 ALIGN = center><FONT COLOR=BLUE>" & objrs1("FIRSTNAME") & "</FONT></TD>"
		response.Write "<TD WIDTH=100 ALIGN = center><FONT COLOR=BLUE>" & objrs1("MIDNAME") & "</FONT></TD>"
		response.Write "<TD WIDTH=100 ALIGN = center><FONT COLOR=BLUE>" & objrs1("LASTNAME") & "</FONT></TD>"
		response.Write "<TD WIDTH=100 ALIGN = center><FONT COLOR=BLUE>" & objrs1("ROLE") & "</FONT></TD>"
		response.Write "<TD WIDTH=200 ALIGN = center><FONT COLOR=BLUE> Can not be deleted </FONT></TD></TR>"		
		objrs1.MoveNext
Loop
%>


<%
	
	objrs1.Close
	Set objrs = Nothing
	

	con.Close
	Set con = Nothing
	

%>
	</TABLE></FORM>
	</BODY>
</HTML>
<% Session("ErrMsg") = 0 %>
<% END IF %>