
<HTML>
<HEAD>
<TITLE>UCITIM - Login</TITLE>
</HEAD>

<FORM METHOD ="post" ACTION="index.asp">
<BODY>
<p><CENTER><H1> UCITIM - We Care<H3> Complaint Management System </H3></H1></CENTER></p>
  <HR><CENTER>

<% if (Session("ErrMsg") = 1) then %><FONT COLOR = "RED">
<% response.write "Invalid User ID OR Password, TRY AGAIN" %></FONT>
<% end if %>


 <TABLE BORDER="0" CELLSPACING="0" width="462" BGCOLOR = "#ASDFAS">
    <TR>
      <TD WIDTH="470" COLSPAN="2" >
       <IMG SRC="wpe00991.JPG"WIDTH="470" HEIGHT="315"></TD>
      <TD width="1" ></TD>
    </TR>
    <TR>
      <TD  ALIGN = "center" width="234"> </TD>
      <TD ALIGN ="center" width="234"  > </td>	
    </TR>
    <TR>
      <TD  ALIGN="center" width="234">UCITIM ID :</TD>
      <TD width="234"> <INPUT NAME ="login" TYPE="text" size="20"></TD>
    </TR>
    <TR>
      <TD ALIGN="center" WIDTH="234">Password :</TD>
      <TD width="234"><INPUT NAME ="pwd" TYPE="password" size="20"></TD>
    </TR>
    <TR>
      <TD ALIGN="center" WIDTH="470" COLSPAN="1">&nbsp;</TD>
    </TR>
    <TR>
      <TD width="936" COLSPAN="2"><CENTER><INPUT TYPE ="submit" VALUE="Login"></CENTER></TD>
    </TR>
    <TR>
    <TD ALIGN ="center" WIDTH="470" COLSPAN="2">For any queries contact the
      <a href="mailto:admin_ucitim@ipu.ac.in">administrator</a> </td>
    </TR>
  </TABLE>
  </CENTER>
<% Session("ErrMsg") = 0 %>

</BODY>
</HTML>