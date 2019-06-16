<%@ Language=VBScript %>

<% option Explicit %>
<!--#include virtual="adovbs.inc"-->

<!--#INCLUDE FILE ="link_spluser.asp"-->
<BR><BR><BR><HR>
<!--#INCLUDE FILE="submit.asp"-->


<%
	FUNCTION fixQuotes(theString)
		fixQuotes=Replace(theString,"'","''")
	END FUNCTION

	
	Dim mycomp_num,sqltemp,dept 
	Session("ErrMsg")=0
	mycomp_num=TRIM(fixQuotes(request.form("comp_num")))	


	if (mycomp_num)<>"" then 

	sqltemp = "select * from complaint where COMPID='"
	
	sqltemp=sqltemp &mycomp_num& "'"
	set objrs=conn.execute(SQLtemp)


	dept = DEPT

	
	'objrs.Open "complaint",conn, , ,adCmdTable


		If objrs.EOF then
			'response.Write ("Complaint ID is not found. Please enter the correct complaint ID")
			objrs.Close
			set objrs = nothing
			conn.close
			set conn = nothing
			Session("ErrMsg") = 1
			response.redirect "track.asp"
			
		End If

	
	else
		'response.write ("Complaint ID is not valid")
		Session("ErrMsg") = 2
		response.redirect "track.asp"
	end if

%>





<HTML>
<HEAD><TITLE>Logout</TITLE></HEAD>
<BODY>


	The Report for complaint ID 
	<STRONG> 
		<% =(Request.Form("comp_num")) %>
	</STRONG> is as follows    

<HR>
<TABLE BORDER = "0" CELLSPACING="0">

<TR  HEIGHT  ="40" >
	<TD WIDTH = "200" > 
		<STRONG> Date Of Complaint </STRONG>
	</TD>

	<TD WIDTH ="100">	
		<%=objrs("INDATE")%>
	</TD>	
</TR>

<TR  HEIGHT  ="40" >
	<TD WIDTH = "200" > 
		<STRONG> From (ID) </STRONG>
	</TD>

	<TD WIDTH ="100">	
		<%=objrs("ID")%>
	</TD>	
</TR>

<TR  HEIGHT  ="40" >
	<TD WIDTH="200" > 
 		<STRONG> Department </STRONG>
	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("DEPT")%>
	</TD>
</TR>

<TR  HEIGHT   ="40" >
	<TD WIDTH="200" > 
		 <STRONG> Room No. </STRONG>
	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("ROOMNO")%>
	</TD>
</TR>

<TR  HEIGHT   ="40" >
	<TD WIDTH="200" > 
		<STRONG> Machine Sr. No. </STRONG>
	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("MACHINE_SRNO")%>
	</TD>
</TR>


<TR  HEIGHT  ="40" >
	<TD WIDTH="200"> 
		<STRONG> Type Of Complain </STRONG>

	</TD>

	<TD WIDTH = "200" > 
			<%=objrs("COMPTYPE")%>
	</TD>
</TR>

<TR  HEIGHT   ="40" >
	<TD WIDTH="200"> 
		<STRONG> Description </STRONG>

	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("COMPDISCRIPTION")%>
	</TD>
</TR>

<TR  HEIGHT   ="40" >
	<TD WIDTH="200"> 
		<STRONG> Assigned TO </STRONG>

	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("ASSIGNEDTO")%>
	</TD>
</TR>
<TR  HEIGHT   ="40" >
	<TD WIDTH="200"> 
		<STRONG> Feedback (By Engineer) </STRONG>

	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("FEEDBACK")%>
	</TD>
</TR>
<TR  HEIGHT   ="80">
	<TD WIDTH="200"> 
		<STRONG> Status</STRONG>

	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("STATUS")%>
	</TD>
</TR>
</TABLE>	
<BR><HR>
We look for your cooperation
	Keep visiting....
<HR>

</BODY>
</HTML>
  
  
<%
	objrs.Close
	set objrs = nothing
	conn.close
	set conn = nothing
%>