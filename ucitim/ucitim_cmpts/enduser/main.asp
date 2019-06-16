<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->


<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/enduser.asp")
ELSE
%>

<!-- #INCLUDE FILE = "link_enduser.asp"-->
<!--#include FILE="submit.asp"-->

<BR><BR><BR><HR><BR>


<HTML>
<HEAD><TITLE>main page for all</TITLE>

</HEAD>
<BODY >
<TABLE BORDER="0">
<% if (Session("ErrMsg") = 21) then %><FONT COLOR = "RED">
<% response.write "TRY AGAIN" %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 22) then %><FONT COLOR = "RED">
<% response.write "TRY AGAIN" %></FONT>
<% end if %>


<%
	dim sqltemp,myid,i

	i=0
	myid = Session("login_id")	
	
	

	sqltemp = "SELECT * FROM message where MESSAGETO ='"
	sqltemp = sqltemp &myid&"'"
	set objrs=conn.execute(sqltemp)


	dim tithi
	tithi=date()
	
	con2.Execute "UPDATE attendence SET LAST_LOGIN_DATE = '"&tithi&"' WHERE ID = '"&myid&"' ", , adCmdText

%>
	




<FORM METHOD = "post" ACTION = "messagedel.asp">
<TABLE BORDER= "0">
<TR>
<TD WIDTH = "200" ALIGN = "left"><H1><U>Welcome!</U></H1></TD>
<TD WIDTH = "400" ALIGN ="left"><H2><FONT COLOR = "BRONZE"><% =Session("login_name") %></FONT></H2></TD></TR></TABLE>
<hr>
<TABLE BORDER= "1">
<TR>
		    <TD WIDTH="100" ALIGN = "center"><B>From (ID)</B></TD>
		    <TD WIDTH="300" ALIGN = "center"><B>Message</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>Date</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>Delete?</B></TD>
		    
</TR>


<% do while Not objrs.EOF %>	          		   
<TR>
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("ID")%></FONT></TD>
		    <TD WIDTH="300" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("MESSAGE")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("MESDATE")%></FONT></TD>
       		    <TD WIDTH="150" ALIGN=center><INPUT TYPE = "submit" NAME ="msgdel<%Response.Write objrs.Fields("SRNO")%>" value="Delete Msg"></TD>
		     
</TR>
<% objrs.MoveNext %>
	    	     
<% Loop %>


</TABLE></FORM>
<% Session.Timeout = 5 %>
</BODY>
</HTML>
<%
	objrs.Close
	Set objrs = Nothing
	
	conn.Close
	Set conn = Nothing

	con2.Close
	Set con2 = Nothing

%>
<% Session("ErrMsg") = 0 %>
<%
END IF
%>