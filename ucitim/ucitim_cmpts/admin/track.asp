<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE
%>

<!-- #INCLUDE FILE = "link_admin.asp"-->
<!--#INCLUDE FILE="submit.asp"-->
<BR><BR><BR><HR><BR>


<HTML>
<HEAD><TITLE>UCITIM - Regisater </TITLE></HEAD>
<BODY>

<FORM METHOD = "post" ACTION ="track_res.asp" >



<CENTER>

<BR><BR>

<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "Complaint ID not found. Please enter the correct complaint ID" %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 2) then %><FONT COLOR = "RED">
<% response.write "Complaint ID is not valid" %></FONT>
<% end if %>

<TABLE CELLSPACING = "0" ALIGN = "center">

   <TR COLSPAN = "5" VALIGN = "top">
         <H3> Cmplaint Tracking Made Simple</H3>
</TR>
   
  
   <TR>
      <TD WIDTH = "200"><STRONG>Enter your Complaint No.</STRONG></TD>
	<TD><INPUT NAME = "comp_num"  TYPE ="number" 
		 SIZE = "10" MAXLENGTH = "10"></TD>
</TR>

</TABLE>

<BR><BR><HR><BR><BR><ALIGN = "right">
<INPUT TYPE = "submit" VALUE = " Track " >

</ALIGN>
</FORM>
<% Session("ErrMsg") = 0 %>
</BODY>
</HTML>
<%
END IF
%>