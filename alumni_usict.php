<?php 	
	include"header.php";
	
?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
<style>

p, ol, ul {
	text-align: justify;
}
    a{
    cursor:pointer;
    }
a:hover{
color:blue;
}
    ul{font-size:0.9em;}
</style>
<script>
    $(document).ready(function(){
    $("a").click(function(){
        var id=$(this).attr("id");
        $(".usict_alumni_home").hide();
        $(".news_updates").hide();
        $(".register").hide();
        $(".membership").hide();
        $(".bank_account").hide();
        $(".govern").hide();
        $(".students").hide();
        $("."+id).show();
    });
});
</script>

    	<div class=table-box>
        <br>
        <h2 id="heading1">ALUMNI</h2>
        <br>
            <div id='cssmenu1'  style="margin-left:200px;">
<ul>
   <li class='active'><a href='alumni_usict.php'>USICT</a></li>
   <li><a href='alumni_uslls.php'>USLLS</a></li>
   <li><a href='alumni_usbas.php'>USBAS</a></li>
   <li><a href='alumni_usbt.php'>USBT</a></li>
   <li ><a href='alumni_usem.php'>USEM</a></li>
   <li><a href='alumni_usct.php'>USCT</a></li>
   <li><a href='alumni_usms.php'>USMS</a></li>
</ul>
</div>
<br>
<br>  
            <div id="USICT" >
    
               <div id="cont" style="margin-left:100px;">
  <div id="colOne">
  <div class="box">
      <h3>&nbsp;</h3>
      <ul class="bottom">
        <li><a id="news_updates" >News &amp; Updates</a> </li>
        <li><a id="register">Registration &amp; Enrollment</a></li>
        <!--li><a id="membership">Membership Rules</a></li>
        <li><a id="bank_account">Bank Account / Payment</a></li>
        <li><a id="govern">Governing Body</a></li>
		<li><a id="students">Passed Out Students</a></li-->
      	<li><a href="images/alumni_list151217.pdf">Alumni meet Attendees list(as on 15/12/2017)</a></li>
      </ul>
    </div>
  </div>
  
	<div id="colTwo" class="usict_alumni_home">
			<center><h2>USICT Alumni Association </h2></center>
			<br>	<br>
			<img src="images/alumni_usict.png" height="280px">
			<br>	<br>
			<center><h3><font color="black">Alumni meet of USICT to be held on 6th January, 2018 at 11.00 am</font></h3></center>
			<font size="3">      &nbsp;&nbsp;&nbsp;&nbsp;</font>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p class="indent">&nbsp;</p>

	</div>
    
	<div id="colOne" class="news_updates" style="display:none">
                   <h2> News And Updates</h2>
				   <br>
				   
                    <li><h4>   </h4></li>
                    <li></li>
    </div>
				   
     <div id="colTwo" class="register" style="display:none">
                   <center style="font-weight: bold"><u>Registration & Enrollment</u></center>
					<br>
					  <p>All registered alumni are invited for the Meet. 
					  
					  <h3><font color="#000000">Nominations are invited for Election of USICT Alumni Association</font></h3>
					  <p>Interested Alumni may kindly send their consent to amit@ipu.ac.in. </p>
					  <p>&nbsp;. </p>
					  <p>&nbsp; </p>
					  <p>&nbsp;</p>
    </div>
				   
                   <div id="colTwo" class="membership" style="display:none">
						<h3 align="center" style="color: #000000"><u>Membership Rules</u> </h3>
						<p class="indent">&nbsp;</p>
                   </div>

                   <div id="colTwo" class="bank_account" style="display:none">
							<h3 align="center" style="font-weight: bold; color: #000000;"><u>Bank Account </u></h3>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
							<p class="indent">&nbsp;</p>

								<div class="box"></div>
							</div>
							
                   <div id="colTwo" class="govern" style="display:none">
<div align="center" style="font-weight: bold"><span style="font-family: &quot;Times New Roman&quot;, Times, serif"><u>GOVERNING BODY</u></span>
</div>
<p style="font-weight: bold">Name of members of the Governing Body including executing body members of Alumni Association of USIT, GGSIPU. </p>
<table style="width:100%">
  <tr>
    <th valign="top"><p align="center" style="font-weight: bold">Sr. No. </p></th>
    <th valign="top"><p style="font-weight: bold">Designation </p></th>
    <th valign="top"><p style="font-weight: bold">Name &amp; Email </p></th>
    <th valign="top"><p style="font-weight: bold"> Address </p></th>
  </tr>

  
  
  
  
  
  </table>
<p>&nbsp; </p>
<p class="indent">&nbsp;</p>

    <div class="box"></div>
</div>
                   <div id="colTwo" class="students" style="display:none">
<div align="center" style="font-weight: bold"><span style="font-family: &quot;Times New Roman&quot;, Times, serif"><u>LIST OF PASSED OUT STUDENTS</u></u></span>
  <br />
</div>
<!--
<TABLE width=482  border=1 cellspacing=1 bordercolor="#eeeeee" align="center">
  <TBODY>
  <TR>
    <TD><div align="left"><B>B.Tech.(IT)</B>
          <ul>
            <li>Batch : Year 2001-2005 &nbsp;&nbsp;<a href="/malumni/btech_alumini_2005.pdf">PDF</a> </li>
                <li>Batch : Year 1999-2003 &nbsp;&nbsp;<a href="/malumni/alumnibtechit.htm">HTM</a> </li>
                <li>Batch : Year 200s2-2006 &nbsp;<a href="/malumni/2002-06alumni.pdf">&nbsp;PDF </a></li>
                <li>Batch : Year 2003-2007 &nbsp;&nbsp;<a href="/malumni/2003-07alumni.pdf">PDF</a></li>
                <li>Batch : Year 2004-2008 &nbsp;<a href="/malumni/2004-08.pdf"> PDF </a></li>
          </ul>
    </div></td>
  </tr>
  <TR>
    <TD><div align="left"><B>B.Tech.(IT) Integrated </B>
          <ul>
            <li>Batch : Year 2001-2005 &nbsp; <a href="/malumni/2001-05alumniint.pdf">PDF</a> </li>
          </ul>
    </div></td>
  </tr>
  <TR>
    <TD><div align="left"><B>MCA (SE)</B>
          <ul>
            <li>Batch : Year 2002-2005 &nbsp;&nbsp;<a href="/malumni/mca_alumni_2005.pdf">PDF</a> </li>
                <li>Batch : Year 2000-2003 &nbsp;&nbsp;<a href="/malumni/alumnimcase.htm">HTM</a> </li>
                <li>Batch : Year 2003-2006 &nbsp;&nbsp;<a href="/malumni/MCA%20(SE)%202003-06.pdf">PDF</a></li>
                <li>Batch : Year 2004-2007 &nbsp;&nbsp;<a href="/malumni/MCA(SE)%202004-07.pdf">PDF</a></li>
                <li>Batch : Year 2005-2008 &nbsp; <a href="/malumni/MCA%20(SE)%202005-08.pdf">PDF </a></li>
          </ul>
    </div></td>
  </tr>
  <TR>
    <TD><div align="left"><B>MCA (LE)</B>
          <ul>
            <li>Batch : Year 2003-2005 &nbsp;&nbsp;<a href="/malumni/mca_le_alumni_2005.pdf">PDF</a> </li>
                <li>Batch : Year 2004-2006 &nbsp;<a href="/malumni/MCA%20(LE)%202004-06.pdf"> PDF</a> </li>
                <li>Batch : Year 2005-2007 &nbsp;<a href="/malumni/MCA%20(LE)%202005-07.pdf">&nbsp;PDF</a></li>
          </ul>
    </div></td>
  </tr>
  <TR>
    <TD> <p align="left"><B>M.Tech (CSE)</B>
      </p>
      
        <div align="left">
            <ul>
              <li>Batch : Year 2006-2008&nbsp;&nbsp;<a href="/malumni/mtech(cse)2006-08.pdf">PDF</a> </li>
            </ul>
      </div></td>
  </tr>
  <TR>
    <TD>
      <div align="left"><B>M.Tech (ITR)</B>            
          <ul>
            <li>Batch : Year 2004-2006&nbsp;&nbsp;<a href="/malumni/MTECH%20ITR%202004-06.pdf">PDF</a> </li>
                <li>Batch : Year 2005-2007&nbsp; <a href="/malumni/MTECH%20ITR%202005-07.pdf">PDF</a> </li>
                <li>Batch : Year 2006-2008&nbsp; <a href="/malumni/mtech(cse)2006-08.pdf">PDF</a> </li>
          </ul>
      </div></td>
  </tr>
</table>-->
<p class="indent">&nbsp;</p>

    <div class="box"></div>
  </div>
</div>
	</div>
  	</div>
</div>
<?php include"footer1.php"
	
?>