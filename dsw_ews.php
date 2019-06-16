<?php 	
	include"header.php";
	
?>


<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
    	<div class=table-box>
        <br>
        <h2 id="heading1">DIRECTORATE  OF STUDENT'S WELFARE</h2>
        <br>
            <div id='cssmenu1'  class="dsw">
<ul>
<!--   <li class='active'><a href='#'>Director</a></li>-->
    <li><a href='dsw.php'>Notices</a></li>
    <li><a href='dsw_director.php'>Director</a></li>
   <li><a href='dsw_associate_director.php'>Associate Director</a></li>
    <li><a href='dsw_sports.php'>Sports</a></li>
   <li ><a href='dsw_student.php'>Students' Council</a></li>
   <li><a href='dsw_anugoonj.php'>Anugoonj</a></li>
   <li><a href='dsw_srijan.php'>Srijan</a></li>
   <li class='active'><a href='dsw_ews.php'>EWS</a></li>
   <li><a href='dsw_forms.php'>Guidelines / Fomrs</a></li>
   <li><a href='dsw_contact.php'>Contact DSW</a></li>
</ul>
</div>
<br>
<br>      
            <h1 align="center" ><strong>DSW-EWS</strong></h1>
			<br>
			<h2 halign=center>>>  <a href="http://164.100.158.135/ews">Apply Online for EWS Scheme 2018</a></h2>

		<div class=table-box>
       
		
		
       
<?php 
include "functions.php";
create_table_sorted("ewsdsw");
            ?>
</div>
<?php include"footer1.php"
	
?>