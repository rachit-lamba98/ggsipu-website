<%@ Language=VBScript %>

<% option Explicit %>
<!--#include virtual="adovbs.inc"-->

<!--#INCLUDE FILE = "link_spluser.asp"-->
<BR><BR><BR>
<!--#INCLUDE FILE="submit.asp"-->

<%
	FUNCTION fixQuotes(theString)
		fixQuotes=Replace(theString,"'","''")
	END FUNCTION



	dim sqltemp1,admin
	

	sqltemp1 = "SELECT ID FROM validation where ROLE ='Administrator'"
	
	set objrs1=con.execute(sqltemp1)
	admin=objrs1("ID")



	
	dim tithi
	tithi=date()

	Session("ErrMsg")=0
	
	if request.Form("message")<>"" then

	objrs.Open "message", conn, adOpenDynamic, adLockOptimistic, adCmdTable
	objrs.AddNew
	objrs("ID")=Session("login_id")
	objrs("MESSAGE")=request.form("message")
	objrs("MESDATE")=tithi
	objrs("MESSAGETO")=admin
	objrs.Update
	
	objrs.Close
	set objrs = Nothing
	
    	conn.close
	
	set conn=nothing



	
	
	else
		if (request.form("message")) =""  then 
		Session("ErrMsg")=1
		end if
		response.redirect "post.asp"
	end if
%>






<HTML>
<HEAD><TITLE>Post Result</TITLE></HEAD>
<BODY>
	<%= ("<HR><H3>Message sent successfully</H3><HR>") %>
	<TABLE BORDER = "0" CELLSPACING="0">
		<%=("<CAPTION><STRONG>Details of message<HR></STRONG></CAPTION>") %>
	<TR>
		<TD WIDTH="100">
			<%= ("<STRONG>To</STRONG>") %>
		</TD>
		
		<TD>
			<%= ("<STRONG>:</STRONG>") %>
		</TD>
		
		<TD WIDTH="300">
			Administrator
		</TD>
	</TR>
	
	<TR HEIGHT = "200" VALIGN="top">
		<TD WIDTH="100">
			<%= ("<STRONG>Message</STRONG>") %>
		</TD>
	
		<TD>
			<%= ("<STRONG>:</STRONG>") %>
		</TD>
		
		<TD WIDTH="300" >
			<%=(Request.Form("message")) %>
		</TD>
	</TR>

	</TABLE>
<%
	Response.Write("<BR><BR><HR> Recipient will see this message at his\her login ")
	Response.Write("We look for your cooperation.Keep visiting....")
%>
<HR>
<% Session("ErrMsg") = 0 %>
</BODY>
</HTML>
<%
	objrs1.Close
	set objrs = nothing
	con.Close
	set con = nothing
%>