<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->
<!--#INCLUDE FILE="submit.asp"-->
<!--#INCLUDE FILE = "link_admin.asp"-->

<%
	dim sqltemp,mynewtech,mycompnum
	
if request.form("tech_id") <>"" AND request.form("com_num")<>""  then
	
	

	conn.Execute "UPDATE complaint SET ASSIGNEDTO = '"&request.form("tech_id")&"' WHERE COMPID = '"&request.form("com_num")&"' ", , adCmdText
	
	conn.Close
	set conn = Nothing

else

	if (request.form("com_num")) =""  then 
		Session("ErrMsg")=1
	else

	if (request.form("tech_id")) =""  then 
		Session("ErrMsg")=2
	else
	end if
	end if

	response.redirect "assign.asp"
	
end if
	
			

%>

<BR><BR><BR><HR><BR>


<HTML>
<HEAD><TITLE>Logout</TITLE></HEAD>
<BODY>
<BR><ALIGN = "left"><STRONG> Job assigned successfully </STRONG></ALIGN><BR><HR>

<TABLE BORDER = "0" CELLSPACING="0">
<TR>
	<TD WIDTH="200" HEIGHT ="50" VALIGN="top"> 
		<%= (" Complain Number") %>
	</TD>

	<TD WIDTH = "100" VALIGN="top"> 
		 <STRONG>
			<%= (Request.Form("com_num"))  %>
		</STRONG>
	</TD>
</TR>

<TR>
	<TD WIDTH="200" HEIGHT ="50" VALIGN="top"> 
		<%= (" New Technician ") %>
	</TD>

	<TD WIDTH = "100" VALIGN="top"> 
		 <STRONG>
			<%= (Request.Form("tech_id")) %>
		</STRONG>
	</TD>
</TR>

</TABLE>	
<BR><BR><HR>
<% Session("ErrMsg") = 0 %>
</BODY>
</HTML>


	
			
			
