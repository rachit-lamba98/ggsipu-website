<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE
%>
<!-- #INCLUDE FILE = "link_admin.asp"-->
<!--#INCLUDE FILE="submit.asp"-->
<BR><BR><BR><HR><BR>


<%
	dim sqltemp

	

	sqltemp = "select ID,FIRSTNAME,MIDNAME,LASTNAME from validation"
	set objrs=conn.execute(SQLtemp)
	
%>





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

   <THEAD>
   <TR>
     
      <TH COLSPAN = "5" VALIGN = "top">
         <CENTER><H1>Message Posting Service</H1></CENTER><BR>
      </TH>
   </TR>
   </THEAD>

   <TBODY>

<TR>

      <TD WIDTH="150">
	<%= ("<STRONG>To  : </STRONG>") %>
      </TD>
	<TD>
		<SELECT NAME="acc_type">
		<OPTION SELECTED ="">
		     <% do while Not objrs.EOF %>	
		     <OPTION> <%=objrs("ID")%>  
    		    <% objrs.MoveNext
	    	     
    		    Loop %>
	
		</SELECT>


<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "'To' Field must have an User ID, Please Select one." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 2) then %><FONT COLOR = "RED">
<% response.write "Please write some message." %></FONT>
<% end if %>

	</TD>
<T D>

</TD>
</TR>

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
	objrs.Close
	Set objrs = Nothing
	conn.Close
	Set conn = Nothing
%>

<%
END IF
%> 