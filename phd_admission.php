<?php 	
	include"header.php";
	
?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">

    	<div class=table-box>
        <br>
        <h2 id="heading1">Ph.D. / M.Phil. Admissions 2018</h2>
        <br>


     <div id='cssmenu1'class="dsw">
<ul>
    <li><a href='rnc.php'>Notices</a></li>
    <li><a href='rnc_director.php'>Director</a></li>
    <li ><a href='rnc_associate_director.php'>Associate Director</a></li>
   <li><a href='rnc_doctoral_research.php'>Doctoral Research</a></li>
   <li><a href='http://ipu.ac.in/researchcons/listofsupervisor.pdf'>Recognized Supervisor</a></li>
   <li><a href='rnc_contact_drc.php'>Contact DRC</a></li>
   <li class='active'><a href='phd_admission.php'>Ph.D./ M.Phil. Admissions</a></li>
</ul>
</div> 
	
	<br><br>
	<h2>>> <a href="https://cdn.digialm.com//EForms/configuredHtml/850/55035/application.html">Apply Online for Ph.D./ M.Phil. Admissions</a>
<?php 
include "functions.php";
create_table_sorted("phd_admission");
            ?>
</div>


<?php include"footer1.php"
	
?>