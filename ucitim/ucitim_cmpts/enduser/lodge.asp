
<%
IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE
%>

<!--#INCLUDE FILE = "link_enduser.asp"-->
<!--#include FILE="submit.asp"-->

<BR><BR><BR><HR><BR>


<HTML>
<HEAD><TITLE>LODGE</TITLE></HEAD>
<BODY>

<FORM METHOD = "post" ACTION ="lodge_res.asp" >

<CENTER><FONT FACE = "BOOK ANTIQUA" SIZE = "3">
                	<H1><U>Complaint Form</U> </H1></CENTER>
<HR>
<TABLE BORDER="0" CELLSPACING = "0" ALIGN ="center">

<TR HEIGHT = "50">
	<TD WIDTH = "200">
		<STRONG>Department</STRONG>
	</TD>
	
	<TD >
		<SELECT NAME="dept">
			<SELECTED ="Admin">
			<OPTION>Admin Block
			<OPTION>Biotechnology
			<OPTION>East Hostel
			<OPTION>Faculty Of Law
			<OPTION>USMS
			<OPTION>USCT
			<OPTION>USIT
			<OPTION>West Hostel
		</SELECT>
	</TD>
</TR>

<TR HEIGHT = "50">
	<TD WIDTH = "200">
		<STRONG>Room No.</STRONG>
	</TD>
	<TD>
		<INPUT TYPE = "text" NAME = "room_no">
	</TD>
</TR>

<TR HEIGHT = "50">
	<TD WIDTH = "200">
		<STRONG>Machine Sr. No.</STRONG>
	</TD>
	<TD>
		<INPUT TYPE = "text" NAME = "mc_srno">
	</TD>
</TR>


<TR HEIGHT = "50">
	<TD WIDTH = "200">
		<STRONG>Complain Type</STRONG>	
	</TD>
	
	<TD>		
		<SELECT NAME="type">
			<SELECTED = " ">
			<OPTION>Computer
			<OPTION>Printer
			<OPTION>Scanner
			<OPTION>UPS
			<OPTION>Networking
			<OPTION>Software
			<OPTION>Antivirus
			<OPTION>Website
			<OPTION>Others
		</SELECT>
	</TD>
</TR>

<TR HEIGHT = "50">
	<TD WIDTH = "200" VALIGN="top">
		<STRONG>Problem</STRONG>
	</TD>

	<TD>
		<TEXTAREA NAME = "desc_of_complain"  ROWS="5" COLS="20"> </TEXTAREA>
	</TD>
</TR>
</TABLE>

		<BR><HR><BR>
		<CENTER><INPUT TYPE = "submit" VALUE = " Lodge!" ></CENTER>
</FORM>

</BODY>
</HTML>

<%
END IF
%>