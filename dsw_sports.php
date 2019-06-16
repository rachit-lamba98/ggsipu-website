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
    <li  class='active'><a href='dsw_sports.php'>Sports</a></li>
   <li><a href='dsw_student.php'>Students' Council</a></li>
   <li><a href='dsw_anugoonj.php'>Anugoonj</a></li>
   <li><a href='dsw_srijan.php'>Srijan</a></li>
   <li><a href='dsw_ews.php'>EWS</a></li>
   <li><a href='dsw_forms.php'>Guidelines / Fomrs</a></li>
   <li><a href='dsw_contact.php'>Contact DSW</a></li>
</ul>
</div>
<br>
<br>      
            <h1 align="center" ><strong>SPORTS</strong></h1>
	<?php 
include "functions.php";
create_table_sorted("sports");
            ?>
</div>
<?php include"footer1.php"
	
?>