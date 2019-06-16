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

	
	sqltemp = "select PASSWRD from validation where ID='"
	
	sqltemp=sqltemp &s_id& "'"
	set objrs=con.execute(SQLtemp)

		if objrs("PASSWRD")<>mycur_password then
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

	conn.Execute "UPDATE validation SET PASSWRD = '"&mynew_password&"' WHERE ID = '"&s_id&"' ", , adCmdText
	
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
	<H2>Password changed successfully.</H2>
<% Session("ErrMsg")=0 %>
</BODY>
</HTML>
