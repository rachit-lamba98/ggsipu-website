<%@ LANGUAGE = "VBScript" %>
<% OPTION EXPLICIT %>
<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE

%>
<!-- #INCLUDE FILE = "link_admin.asp" -->
<!--#INCLUDE FILE="submit.asp"-->
<BR><BR><BR><HR><BR>
<HTML>
<HEAD><TITLE>UCITIM - Register </TITLE></HEAD>


<FORM METHOD = "POST" ACTION ="register_res.asp" >

<FONT FACE = "BOOK ANTIQUA" SIZE = "3">
                  <H2>Register A New User</H2><HR><CENTER><BR><BR>


<TABLE ALIGN = "center" CELLPACING = "0" BORDER ="0 ">
<TR HEIGHT = "50">
	<TD WIDTH="200">First Name</TD>
		<TD WIDTH = "200"><INPUT NAME = "firstname"  TYPE ="text"  
			SIZE = "20" MAXLENGTH = "20"></TD>
	<TD WIDTH="200">Mid Name</TD>
		<TD WIDTH = "200"><INPUT NAME = "midname"  TYPE ="text" 
			 SIZE = "20" MAXLENGTH = "20"></TD>
</TR>
<TR HEIGHT = "50">
	<TD>Last Name</TD>
		<TD WIDTH = "200"><INPUT NAME = "lastname"  TYPE ="text" 
			 SIZE = "20" MAXLENGTH = "20"></TD>
</TR>
<TR HEIGHT = "50">
	<TD>Password</TD>
		<TD WIDTH = "200"><INPUT NAME = "pwd"  TYPE ="text" 
			 SIZE = "20" MAXLENGTH = "20"></TD>
</TR>

<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "'First name' should have a name, Please enter one." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 2) then %><FONT COLOR = "RED">
<% response.write "'Password'can not be empty, Please enter again." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 3) then %><FONT COLOR = "RED">
<% response.write "'AccountType' should have an account, Please Select one." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 4) then %><FONT COLOR = "RED">
<% response.write "Can not Register. Make sure 'First Name', 'Password' and 'AccountType' are filled properly" %></FONT>
<FONT COLOR = "RED">
<% response.write " and you are not using any special character(s)." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 5) then %><FONT COLOR = "RED">
<% response.write "'Password' and 'Confirm Password' should be same, Please enter again." %></FONT>
<FONT COLOR = "RED">
<% response.write "Make sure you are not using any special character(s)." %></FONT>
<% end if %>

<TR HEIGHT = "50">
	<TD>Confirm Password</TD>
		<TD WIDTH = "200"><INPUT NAME = "cnfpwd"  TYPE ="text" 
			 SIZE = "20" MAXLENGTH = "20"></TD>
</TR>
<TR HEIGHT = "50">
	<TD>Account Type</TD>
		<TD WIDTH = "200"><SELECT NAME="acc_type">
			<OPTION SELECTED =" ">	
		    	<OPTION>Engineer
	    		<OPTION>Authority</SELECT></TD></TR>
</TABLE>

<HR><BR><BR><ALIGN = "right">

<INPUT TYPE = "submit" VALUE = "  Sign Up !  " >

</ALIGN>
</FORM>

<% Session("ErrMsg") = 0 %>
</BODY>
</HTML>
<%
  END IF 
%>