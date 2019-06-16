
<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE
%>

<!-- #INCLUDE FILE = "link_admin.asp"-->
<!--#INCLUDE FILE="submit.asp"-->


<BR><BR><BR><HR><BR>
<HTML>
<HEAD><TITLE> Change password </TITLE></HEAD>
<BODY>

<FORM METHOD = "post" ACTION ="password_change_res.asp" >

<CENTER>

<FONT FACE = "BOOK ANTIQUA" >
	<H3>Change My Password</H3>
<BR><HR><BR>

<TABLE CELLSPACING = "0" ALIGN = "center">

<TR HEIGHT = "40">
	<TD WIDTH="300"><STRONG> Enter current password </STRONG></TD>
	<TD><INPUT NAME = "cur_password"  TYPE = "password" MAXLENGTH = "10"></TD>
</TR>

<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "Please enter the current password." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 2) then %><FONT COLOR = "RED">
<% response.write "Please enter the new password." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 3) then %><FONT COLOR = "RED">
<% response.write "Please confirm the password." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 4) then %><FONT COLOR = "RED">
<% response.write "'New Password' and 'Confirm Password' should be same. Please enter again." %></FONT>
<FONT COLOR = "RED">
<% response.write "Make sure you are not using any special character(s)." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 5) then %><FONT COLOR = "RED">
<% response.write "Please enter the correct current password." %></FONT>
<% end if %>

<TR HEIGHT = "40">
	<TD WIDTH="300"><STRONG>Enter new password</STRONG></TH>
	<TD><INPUT NAME = "new_password"  TYPE = "password" MAXLENGTH = "10"></TD> 
</TR>
<TR HEIGHT = "40">
	<TD WIDTH="300"><STRONG>Confirm new password</STRONG></TH>
	<TD><INPUT NAME = "cnf_password"  TYPE = "password" MAXLENGTH = "10"></TD> 
</TR>
</TABLE>

<HR><BR><BR><ALIGN = "right">
<INPUT TYPE = "submit" VALUE = " Change " >

</ALIGN>
</FORM>

<FONT FACE = "BOOK ANTIQUA" >
                  <H6>It is highly advisable to keep changing passwords regularly</H6>
<% Session("ErrMsg") = 0 %>
</BODY>
</HTML>
<%
	END IF
%>