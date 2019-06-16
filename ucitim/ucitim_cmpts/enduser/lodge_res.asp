<%@ Language=VBScript %>

<% option Explicit %>
<!--#include virtual="adovbs.inc"-->

<!--#INCLUDE FILE = "link_enduser.asp"-->
<!--#include FILE="submit.asp"-->

<BR><BR><BR><HR><BR>


<%

	FUNCTION fixQuotes(theString)
		fixQuotes=Replace(theString,"'","''")
	END FUNCTION

	dim sqltemp1,admin
	
	sqltemp1 = "SELECT ID FROM validation where ROLE ='Administrator'"
	
	set objrs1=con.execute(sqltemp1)
	admin=objrs1("ID")





	dim tithi
	tithi = date() 
	


	if (request.form("type") <>"") AND (request.Form("dept")<>"") then


	

	

	randomize
	DIM x
	x = INT(1000000*RND)

	
	
	objrs.Open "complaint", conn, adOpenDynamic, adLockOptimistic, adCmdTable
	objrs.AddNew
	objrs("ID")= session("login_id")
	objrs("COMPID")=x
	objrs("INDATE")=tithi
	objrs("DEPT")=request.form("dept")
	objrs("ROOMNO")=request.form("room_no")
	objrs("MACHINE_SRNO")=request.form("mc_srno")
	objrs("COMPTYPE")=request.form("type")
	objrs("COMPDISCRIPTION")=request.form("desc_of_complain")
	objrs("ASSIGNEDTO")=admin
	objrs("STATUS")="unsolved"
	objrs.Update
	
	

	objrs1.Close
	set objrs1 = Nothing

	objrs.Close
	set objrs = Nothing
	
    	conn.close
	set conn=nothing
	
	con.close
	set con=nothing
	
	else
		
		response.redirect "lodge.asp"
		'lodging failed		
	end if


%>

<HTML>
<HEAD><TITLE>Logout</TITLE></HEAD>
<BODY>


 
<TABLE BORDER = "0" CELLSPACING="0">
<TR HEIGHT = "50">
	<TD WIDTH="200"  VALIGN="top"> 
		<% =(" Department ") %>
	</TD>

	<TD WIDTH = "200" VALIGN="top"> 
		 <STRONG>
			<% =(Request.Form("dept"))  %>
		</STRONG>
	</TD>
</TR>

<TR HEIGHT = "50">
	<TD WIDTH = "200" VALIGN="top">
		Room No.
	</TD>
	<TD WIDTH = "200" VALIGN="top"> 
		 <STRONG>
			<% =(Request.Form("room_no"))  %>
		</STRONG>
	</TD>
</TR>

<TR HEIGHT = "50">
	<TD WIDTH = "200" VALIGN="top">
		Machine Sr. No.
	</TD>
	<TD WIDTH = "200" VALIGN="top"> 
		 <STRONG>
			<% =(Request.Form("mc_srno"))  %>
		</STRONG>
	</TD>
</TR>

<TR HEIGHT = "50">
	<TD WIDTH="200" HEIGHT ="25" VALIGN="top"> 
		<% =(" Type Of Complain ") %>
	</TD>

	<TD WIDTH = "200" VALIGN="top"> 
		 <STRONG>
			<% =(Request.Form("type")) %>
		</STRONG>
	</TD>
</TR>

<TR HEIGHT = "50">
	<TD WIDTH="200" HEIGHT ="25" VALIGN="top"> 
		<% =(" Description ") %>
	</TD>

	<TD WIDTH = "200" VALIGN="top"> 
		 <STRONG>
			<% =(Request.Form("desc_of_complain")) %>
		</STRONG>
	</TD>
</TR>

</TABLE>	
<HR>

<TABLE CELLSPACING = 0 BORDER = 0>
<TR HEIGHT = "50">
	<TD WIDTH="200" HEIGHT ="25" VALIGN="top"> 
		<% =(" Complaint No. ") %>
	</TD>

	<TD WIDTH = "200" VALIGN="top"> 
		 <STRONG>
			<% =(x) %>
		</STRONG>
	</TD>
</TR></TABLE>


	<HR><% =("Please use the given complain number in all future references.<BR>We will get back to you soon with an assured solution ") %>
<% Session("ErrMsg") = 0 %>
</BODY>
</HTML>
