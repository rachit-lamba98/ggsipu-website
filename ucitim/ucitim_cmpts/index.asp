<%

	option Explicit%>

	<!--#INCLUDE FILE="submit.asp"-->
<%
	FUNCTION fixQuotes(theString)
		fixQuotes=Replace(theString, "'","''")
	END FUNCTION
	

	Session("login_time") = time()
	Session("login_id") = Request("login")
	Session("ErrMsg") = 0
	
	dim myid, mypassword
	dim cnpath, sqltemp
	
	
	
	myid=fixQuotes(request.form("login"))
	mypassword=fixQuotes(request.form("pwd"))

	sqltemp = "select ID,FIRSTNAME, MIDNAME, LASTNAME, PASSWRD,ROLE from validation where ID='"
	
	sqltemp = sqltemp &myid& "'"
	
	set rstemp = conn.execute(sqltemp)
	
if (myid <>"") AND (mypassword <>"") then
		
	
	if rstemp.eof then
		rstemp.close
		conn.close
		set rstemp=nothing
		set conn=nothing

		'invalid user
		
		Session("ErrMsg") = 1		
		response.redirect "login.asp"
		
	end if
	
	if rstemp("PASSWRD") = mypassword then
				
		if rstemp("ROLE") = "Administrator" then
			Session("login_name") = rstemp("FIRSTNAME") & (" ") & rstemp("MIDNAME") &(" ") & rstemp("LASTNAME")		
			rstemp.close
			conn.close
			set rstemp=nothing
			set conn=nothing

			'valid

			Session("logged") = "1"	
			
			response.redirect "admin/main.asp"
		end if
		
		if rstemp("ROLE") = "Engineer" then
			Session("login_name") = rstemp("FIRSTNAME") & (" ") & rstemp("MIDNAME") &(" ") & rstemp("LASTNAME")
			rstemp.close
			conn.close
			set rstemp=nothing
			set conn=nothing

			'valid

			Session("logged") = "1"
			
			response.redirect "spluser/main.asp"
		end if
		
		if rstemp("ROLE") = "Authority" then
			Session("login_name") = rstemp("FIRSTNAME") & (" ") & rstemp("MIDNAME") &(" ") & rstemp("LASTNAME")
			rstemp.close
			conn.close
			set rstemp=nothing
			set conn=nothing

			'valid

			Session("logged") = "1"		
			
			response.redirect "enduser/main.asp"
		end if
	
		
	else
		rstemp.close
		conn.close
		set rstemp=nothing
		set conn=nothing
		'invalid password
		Session("ErrMsg") = 1		
		response.redirect "login.asp"
	end if
else
	rstemp.close
	conn.close
	set rstemp=nothing
	set conn=nothing

	Session("ErrMsg") = "1"		
	response.redirect "login.asp"
end if
	rstemp.close
	conn.close
	set rstemp=nothing
	set conn=nothing	
%>
	