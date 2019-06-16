<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->
<!--#INCLUDE FILE="submit.asp"-->
<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE

%>

<!-- #INCLUDE FILE = "link_admin.asp" -->


<%
	dim sqltemp,sqltemp1
					
	sqltemp = "select COMPID from complaint"
	set objrs=conn.execute(SQLtemp)

	sqltemp1 = "select ID from attendence" 
	
	set objrs1=conn.execute(SQLtemp1)
		


%>





<BR><BR><BR><HR><BR>
<HTML>
<HEAD><TITLE>UCITIM - Job Assignment </TITLE></HEAD>
<BODY>

<FORM METHOD = "post" ACTION ="assign_res.asp" >

<FONT FACE = "BOOK ANTIQUA" SIZE = "3">
                  <H2>UCITIM - Assign Job To Another Engineer</H2><HR>
<CENTER>

<BR><BR>

<TABLE ALIGN = "center" CELLPACING = "0">

   <COLGROUP>
      <COL ALIGN = "right">
      <COL SPAN = "4" ALIGN = "center">
   </COLGROUP>

   <THEAD>

<TR>     
      <TH COLSPAN = "5" VALIGN = "top">
         <%= ("<CENTER><H1><U>Job Assignment <U></H1></CENTER><BR>") %>
       </TH>
<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "'ComplainID' can not be empty, Please select one." %></FONT>
<% end if %>

<% if (Session("ErrMsg") = 2) then %><FONT COLOR = "RED">
<% response.write "'Technician ID' can not be empty, Please select one." %></FONT>
<% end if %>
</TR>
   </THEAD>

   <TBODY>
   <TR>
       <TH>ComplainID : </TH>
	<TD><CENTER>
		<SELECT NAME="com_num">
		<OPTION SELECTED =" ">
		<% do while Not objrs.EOF %>	
		     <OPTION> <%=objrs("COMPID")%>   
    		    <% objrs.MoveNext
	    	     
    		   Loop %>
	
		<%
			objrs.Close
			Set objrs = Nothing
			
		%>
		
		</SELECT>
	</CENTER></TD> 
      
      <TD>
      
      </TR>	      
      <TR><TH>Technician ID : </TH>
	<TD><CENTER>
	<SELECT NAME="tech_id">
		<OPTION SELECTED =" ">
		<% do while Not objrs1.EOF %>	
		     <OPTION> <%=objrs1("ID")%>   
    		    <% objrs1.MoveNext
	    	     
    		   Loop %>
	
		<%
			objrs1.Close
			Set objrs1 = Nothing
			conn.Close
			set conn = Nothing
		%>

<%
END IF
%>
		</SELECT>
	</CENTER></TD> 
</TR>
	  
   
</TBODY>
</TABLE>
<HR>
<INPUT TYPE = "submit" VALUE = "Assign">

</FORM>
<% Session("ErrMsg") = 0 %>
</BODY>
</HTML>
