<%@ Language=VBScript %>

<% option Explicit %>
<!--#include virtual="adovbs.inc"-->

<!--#INCLUDE FILE = "link_spluser.asp"-->

<!--#INCLUDE FILE="submit.asp"-->

<BR><BR><BR><HR><BR>


<%

	dim sqltemp,mycomp_id, mynew_status,myfeedback
	 	
	myfeedback = request.form("feed_back")	
	mynew_status = request.form("stats")
	mycomp_id = Session("compno")
	
		

	sqltemp = "select * from complaint where COMPID	= '"&mycomp_id&"' "	

	
	With objrs
		.Open sqltemp,conn,adOpenDynamic,adLockOptimistic,adCmdText
		.Fields("FEEDBACK") = myfeedback
		.Update
	End With
		
	conn.Execute "UPDATE complaint SET STATUS = '"&mynew_status&"' WHERE COMPID = '"&mycomp_id&"' ", , adCmdText
	
	conn.Close
	set conn = Nothing
				


%>

<HTML>
<HEAD><TITLE>Logout</TITLE></HEAD>
<BODY>
	<H2>Feedback registered successfully.</H2>
</BODY>
</HTML>
<%
	Session("compno")=0
%>