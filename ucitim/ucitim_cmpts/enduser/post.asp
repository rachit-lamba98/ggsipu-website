<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE
%>
<!-- #INCLUDE FILE = "link_enduser.asp"-->
<BR><BR><BR><HR><BR>
<!--#include FILE="submit.asp"-->


<HTML>
<HEAD><TITLE>UCITIM - post a message </TITLE></HEAD>
<BODY>

<FORM METHOD = "POST" ACTION ="post_res.asp" >

<FONT FACE = "BOOK ANTIQUA" SIZE = "3">
<%             
	Response.Write("<H2>")
	Response.Write("UCITIM - Post A Message")
	Response.Write("</H2>")
	Response.Write("<HR>")
%>

<CENTER>

<BR><BR>


<TABLE BORDER="0" CELLSPACING = "0"  >
  
     
      <TR COLSPAN = "5" VALIGN = "top">
         <CENTER><H1>Message Posting Service</H1></CENTER><BR>
      </TR>
   
  <TR>

      
	<%= ("<STRONG>MESSAGE TO ADMINISTRATOR</STRONG>") %>
      
</TR>
	
<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "Please write some message." %></FONT>
<% end if %>

	


<TR><TD WIDTH="150" VALIGN="top">
	<%= ("<STRONG> My Message</STRONG>") %>
</TD>
	<TD> 
    <TEXTAREA NAME = "message" ROWS="8" COLS="56" ></TEXTAREA></TD>

   
</TBODY>
</TABLE>

<HR><BR><BR><ALIGN = "right">
<INPUT TYPE = "submit" VALUE = " Post It ! " >

</ALIGN>
</FORM>
<% Session("ErrMsg")=0 %>
</BODY>
</HTML>

<%
END IF
%>