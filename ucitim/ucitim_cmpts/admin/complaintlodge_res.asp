<%@ Language=VBScript %>

<% option Explicit %>
<!--#include virtual="adovbs.inc"-->
<!--#INCLUDE FILE="submit.asp"-->
<!--#INCLUDE FILE = "link_admin.asp"-->


<BR><BR><BR><HR><BR>


<%

	FUNCTION fixQuotes(theString)
		fixQuotes=Replace(theString,"'","''")
	END FUNCTION



	dim sqltemp, mycur_password, mynew_password, mycnf_password, s_id,x
 	
	'x="raj"
	s_id=Session("login_id")
	mycur_password=fixQuotes(request.form("cur_password")) 
	mynew_password=fixQuotes(request.form("new_password")) 
	mycnf_password=fixQuotes(request.form("cnf_password")) 


	if mycur_password <>"" AND mynew_password <>"" AND mycnf_password <>"" then

		if mynew_password <> request.form("cnf_password")  then 
			Session("ErrMsg")=4
			response.redirect "change_password.asp"
		else

	
	
	con.Open "File Name=/cms/index.udl"	


	sqltemp = "select PASSWORD from validation where ID='"
	
	sqltemp=sqltemp &s_id& "'"
	set objrs=con.execute(SQLtemp)

		if objrs("PASSWORD")<>mycur_password then
			Session("ErrMsg")=5
			objrs.Close
			Set objrs = nothing
			con.Close
			set con = nothing
			response.redirect "change_password.asp"
		else
		
			objrs.Close
			Set objrs = nothing
			con.Close
			set con = nothing

	conn.Execute "UPDATE validation SET PASSWORD = '"&mynew_password&"' WHERE ID = '"&s_id&"' ", , adCmdText
	
	conn.Close
	set conn = Nothing
		end if
		end if
	else

	if mycur_password =""  then 
		Session("ErrMsg")=1
	else
 
	if mynew_password =""  then 
		Session("ErrMsg")=2
	else
	if mycnf_password =""  then 
		Session("ErrMsg")=3
	end if
	end if
	end if

	response.redirect "change_password.asp"
	
end if
	
	

%>

<HTML>
<HEAD><TITLE>Logout</TITLE></HEAD>
<BODY>

<FORM METHOD = post ACTION ="complain_lodge.asp">

<% =(" To make changes to your Complain please click back <HR> ") %>
 
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

<TABLE BORDER = "0" CELLSPACING="0">
<TR HEIGHT = "50">
	<TD WIDTH= "400">
		<CENTER><INPUT TYPE="submit" VALUE =" lodge "></CENTER>
	</TD>
	
	<TD WIDTH= "200">
		<CENTER><INPUT TYPE="submit" VALUE =" back "></CENTER>
	</TD>
</TR>
</TABLE>
</FORM>
	<HR><% =("We will get back to you soon with an assured solution ") %>
</BODY>
</HTML>
