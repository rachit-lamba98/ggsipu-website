<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE
%>
<!--#INCLUDE FILE="submit.asp"-->
<!--#INCLUDE FILE = "link_spluser.asp" -->



<%
	dim sqltemp,myid
	myid = Session("login_id")
	
	
	'sqltemp = "select COMPID from complaint where ASSIGNEDTO ='engr'"
	'sqltemp = "select COMPID from complaint"

	sqltemp = "SELECT * FROM complaint where ASSIGNEDTO ='"
	sqltemp = sqltemp &myid&"'"

	set objrs=conn.execute(SQLtemp)
		
%>



<BR><BR><BR><HR><BR>

<HTML>
<HEAD><TITLE> Complaint Feedback </TITLE></HEAD>
<BODY>

<FORM METHOD = "post" ACTION ="feedback_res.asp" >

<FONT FACE = "BOOK ANTIQUA" SIZE = "3">
                  <H2>Complaint Feedback</H2><HR>
<CENTER>

<BR><BR>

<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "'Complaint No' can not be empty, Please select one." %></FONT>
<% end if %>

<TABLE CELLSPACING = "0" ALIGN = "center">

  <TR>
      <TH> Select the Complaint No.</TH>
	<TD><SELECT NAME="complain_no">
		<OPTION SELECTED =" ">
		<% do while Not objrs.EOF %>	
		     <OPTION> <%=objrs("COMPID")%>   
    		    <% objrs.MoveNext
	    	     
    		   Loop %>
		</SELECT>
	</TD></TR>
</TABLE>
<BR><BR>
<HR><BR><BR><ALIGN = "right">
<INPUT TYPE = "submit" VALUE = " Get Details " >

</ALIGN>
</FORM>
</BODY>
</HTML>

<%
	objrs.Close
	set objrs = nothing
	conn.Close
	set conn = nothing	
%>

<% Session("ErrMsg") = 0 %>


<%
END IF
%>