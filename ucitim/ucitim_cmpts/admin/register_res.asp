<%@ Language=VBScript %>

<% option Explicit %>
<!--#include virtual="adovbs.inc"-->
	
<!--#INCLUDE FILE = "link_admin.asp"-->
<!--#INCLUDE FILE="submit.asp"-->
<BR><BR><BR><HR><BR>



<%

	FUNCTION fixQuotes(theString)
		fixQuotes=Replace(theString,"'","''")
	END FUNCTION



	
	dim myfname, mypwd, mycnfpwd, myacc_type
	
	Session("ErrMsg")=0
	

        myfname=TRIM(fixQuotes(request.form("firstname")))
	mypwd=TRIM(fixQuotes(request.form("pwd")))
	mycnfpwd=TRIM(fixQuotes(request.form("cnfpwd")))
	
	myacc_type=request.form("acc_type")
		


	
	
	if (myfname)<>"" AND (myacc_type)<>"" AND (mypwd)<>"" then
	
		if mypwd <> (request.form("cnfpwd"))  then 
		Session("ErrMsg")=5
		response.redirect "register.asp"
		else

		

	

	randomize
	DIM x
	x = INT(1000000*RND)

	
	
	objrs.Open "validation", conn, adOpenDynamic, adLockOptimistic, adCmdTable
	objrs.AddNew
	objrs("ID")= x
	objrs("PASSWRD")=TRIM(fixQuotes(request.form("pwd")))
	objrs("FIRSTNAME")=TRIM(fixQuotes(request.form("firstname")))
	objrs("MIDNAME")=TRIM(fixQuotes(request.form("midname")))
	objrs("LASTNAME")=TRIM(fixQuotes(request.form("lastname")))
	objrs("ROLE")=TRIM(fixQuotes(request.form("acc_type")))
	objrs.Update
	
	
	objrs.Close
	set objrs = Nothing


	
	objrs1.Open "attendence", conn, adOpenDynamic, adLockOptimistic, adCmdTable
	objrs1.AddNew
	objrs1("ID")= x
	'objrs1("LAST_LOGIN_DATE")= date()
	objrs1.Update
	
	
	objrs1.Close
	set objrs1 = Nothing	


    	conn.close
	
	set conn=nothing
		end if	
	
	else

		if (request.form("firstname")) =""  then 
			Session("ErrMsg")=1
		else
		
		if (request.form("pwd")) =""  then 
			Session("ErrMsg")=2
		else

		if (request.form("acc_type")) =""  then 
			Session("ErrMsg")=3
		else

		Session("ErrMsg")=4	

		end if
		end if
		end if
	response.redirect "register.asp"
	
	end if
%>








<HTML>

<HEAD>
	<TITLE>UCITIM - New User</TITLE>
</HEAD>

<BODY>
	<%= (" Registration Successful <BR><HR>") %>
	
	<TABLE BORDER ="0" CELLSPACING="0">
	<TR HEIGHT = "25">
		<TD WIDTH= "200" >
			<% =("Name") %>
		</TD>
		<TD >
			<STRONG>
			<% 
					Response.Write(Request.Form("firstname"))
					Response.Write(" ")
					Response.Write(Request.Form("midname"))
					Response.Write(" ")
					Response.Write(Request.Form("lastname"))
			%>
			</STRONG>
		</TD>
	</TR>
	
	<TR HEIGHT = "25">
		<TD WIDTH="200">
			<% =("User ID ") %>
		</TD>
		<TD WIDTH= "200">
			<STRONG><% =(x) %></STRONG>
		</TD>
	</TR>
<TR HEIGHT = "25">
		<TD WIDTH="200">
			<% =("Password ") %>
		</TD>
		<TD WIDTH= "200">
			<STRONG><% =(Request.Form("pwd")) %></STRONG>
		</TD>
	</TR>
<TR HEIGHT = "25">
		<TD WIDTH="200">
			<% =("Account") %>
		</TD>
		<TD WIDTH= "200">
			<STRONG><% =(Request.Form("acc_type")) %></STRONG>
		</TD>
	</TR>

	</TABLE>
	<%= ("<HR>") %>
<% Session("ErrMsg")=0 %>
</BODY>
 </HTML>