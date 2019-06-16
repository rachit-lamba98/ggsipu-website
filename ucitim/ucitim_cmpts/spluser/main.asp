<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->


<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE
%>

<!-- #INCLUDE FILE = "link_spluser.asp"-->
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
	dim sqltemp,myid,sqltemp1,i

	i=0
	myid = Session("login_id")	
	
	sqltemp = "SELECT * FROM complaint where ASSIGNEDTO ='"
	sqltemp = sqltemp &myid&"'"
	set objrs=conn.execute(sqltemp)


	dim tithi
	tithi=date()
	
	con2.Execute "UPDATE attendence SET LAST_LOGIN_DATE = '"&tithi&"' WHERE ID = '"&myid&"' ", , adCmdText

	sqltemp1 = "SELECT * FROM message where MESSAGETO ='"
	sqltemp1 = sqltemp1 &myid&"'"
	set objrs1=conn.execute(sqltemp1)

	


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
		    <TD WIDTH="100" ALIGN = "center"><B>Comp. ID</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>Dept.</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>RoomNo.</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>Mach.NO.</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>Comp.Type</B></TD>
		    <TD WIDTH="150" ALIGN = "center"><B>Comp.Desc./Msg</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>Status</B></TD>
		    <TD WIDTH="100" ALIGN = "center"><B>Date</B></TD>
		    <TD WIDTH="150" ALIGN = "center"><B>Delete?</B></TD>
</TR>


<% do while Not objrs.EOF %>	          		   
<TR>
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("ID")%></FONT></TD>
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("COMPID")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("DEPT")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("ROOMNO")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("MACHINE_SRNO")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("COMPTYPE")%></FONT></TD>		    
		    <TD WIDTH="150" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("COMPDISCRIPTION")%></FONT></TD>		    		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("STATUS")%></FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs("INDATE")%></FONT></TD>
    		    <TD WIDTH="150" ALIGN = "center"><FONT COLOR = "BLUE">Can not be deleted</FONT></TD>
</TR>
<% objrs.MoveNext %>
	    	     
<% Loop %>

<% do while Not objrs1.EOF %>	          		   
<TR>
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs1("ID")%></FONT></TD>
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE">----</FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE">----</FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE">----</FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE">----</FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE">----</FONT></TD>		    
		    <TD WIDTH="150" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs1("MESSAGE")%></FONT></TD>		    		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE">----</FONT></TD>		    
		    <TD WIDTH="100" ALIGN = "center"><FONT COLOR = "BLUE"><%=objrs1("MESDATE")%></FONT></TD>		    
		    <TD WIDTH="150" ALIGN=center><INPUT TYPE = "submit" NAME ="msgdel<%Response.Write objrs1.Fields("SRNO")%>" value="Delete Msg"></TD>
</TR>
<% objrs1.MoveNext %>
	    	     
<% Loop %>



</TABLE></FORM>
<% Session.Timeout = 5 %>
</BODY>
</HTML>
<%
	objrs.Close
	Set objrs = Nothing
	
	objrs1.Close
	Set objrs1 = Nothing

	conn.Close
	Set conn = Nothing

	con.Close
	Set con = Nothing

	con2.Close
	Set con2 = Nothing
%>
<% Session("ErrMsg")=0 %>
<%
END IF
%>