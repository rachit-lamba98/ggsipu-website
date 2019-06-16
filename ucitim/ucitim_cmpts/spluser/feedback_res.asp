<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->

<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")

ELSE
%>

<!--#INCLUDE FILE = "link_spluser.asp" -->
<!--#INCLUDE FILE="submit.asp"-->

<%
	FUNCTION fixQuotes(theString)
		fixQuotes=Replace(theString,"'","''")
	END FUNCTION

	
	Dim mycomp_num,sqltemp,dept 
	Session("ErrMsg")=0
	mycomp_num=TRIM(fixQuotes(request.form("complain_no")))	


	if (mycomp_num)<>"" then 

	

	sqltemp = "select * from complaint where COMPID='"
	
	sqltemp=sqltemp &mycomp_num& "'"
	set objrs=conn.execute(SQLtemp)
	
	else
			Session("ErrMsg") = 1
			response.redirect "feedback.asp"
	end if

%>




<BR><BR><BR><HR><BR>



<HTML>
<HEAD><TITLE>Result of feedback</TITLE></HEAD>
<BODY>
<HR>
	<BR>The Report for complaint ID 
	<STRONG> 
		<% =(Request.Form("complain_no")) %>
	</STRONG> is as follows    

<HR><BR>

<FORM METHOD = "post" ACTION = "fdbckres.asp">
<TABLE BORDER = "1" CELLSPACING="0">
<%
Session("compno") = (Request.Form("complain_no"))
%>

<TR  HEIGHT  ="40" >
	<TD WIDTH = "200" > 
		<STRONG> Date Of Complaint </STRONG>
	</TD>
	<TD WIDTH ="100">	
		<%=objrs("INDATE")  %>
	</TD>	
</TR>

<TR  HEIGHT  ="40" >
	<TD WIDTH="200" > 
 		<STRONG> Department </STRONG>
	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("DEPT")  %>
	</TD>
</TR>

<TR  HEIGHT   ="40" >
	<TD WIDTH="200" > 
		 <STRONG> Room No. </STRONG>
	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("ROOMNO")  %>
	</TD>
</TR>

<TR  HEIGHT   ="40" >
	<TD WIDTH="200" > 
		<STRONG> Machine Sr. No. </STRONG>
	</TD>

	<TD WIDTH = "200"> 
			<%=objrs("MACHINE_SRNO")  %>
	</TD>
</TR>
<TR  HEIGHT  ="40" >
	<TD WIDTH="200"> 
		<STRONG> Type Of Complain </STRONG>

	</TD>

	<TD WIDTH = "200" > 
			<%=objrs("COMPTYPE") %>
	</TD>
</TR>

<TR  HEIGHT   ="40" VALIGN = "top">
	<TD WIDTH="200"> 
		<STRONG> Description </STRONG>

	</TD>

	<TD WIDTH = "200" VALIGN="top"> 
			<%=objrs("COMPDISCRIPTION") %>
	</TD>
</TR>

<TR  HEIGHT   ="40" VALIGN = "top">
	<TD WIDTH="200"> 
		<STRONG> Status</STRONG>
	</TD>

	<TD WIDTH = "200" VALIGN="top"> 
		<SELECT NAME = "stats">
		<OPTION>solved
		<OPTION>unsolved
		</SELECT>
	</TD>
</TR>
<TR  HEIGHT   ="80" VALIGN = "top">
	<TD WIDTH="200"> 
		<STRONG> Feedback </STRONG>
		<BR>(less than 50 words)
	</TD>

	<TD WIDTH = "200" VALIGN="top"> 
		<TEXTAREA NAME="feed_back" ROWS= "3" COLS ="50"></TEXTAREA>
	</TD>
</TR>
</TABLE>	
<BR>
<TABLE BORDER = "0" CELLSPACING="0">

<TR  HEIGHT  ="40" >
	<TD WIDTH = "200" ALIGN = "center"> 
		<INPUT TYPE = submit VALUE = "SUBMIT"</TD></TR>
</TABLE>
</FORM>

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


<%
END IF
%>  