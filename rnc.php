<?php include"header.php";?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
<div class=table-box>
    <br>
        <h2 id="heading1">RESEARCH & CONSULTANCY</h2>
        <br>
            <div id='cssmenu1'class="dsw">
<ul>
    <li class='active'><a href='rnc.php'>Notices</a></li>
    <li ><a href='rnc_director.php'>Director</a></li>
    <li><a href='rnc_associate_director.php'>Associate Director</a></li>
   <li><a href='rnc_doctoral_research.php'>Doctoral Research</a></li>
   <li><a href='rnc_recognized_supervisor.php'>Recognized Supervisor</a></li>
   <li><a href='rnc_contact_drc.php'>Contact DRC</a></li>
   <li><a href='phd_admission.php'>Ph.D./ M.Phil. Admissions</a></li>
</ul>
</div>
<br><br>

<?php 
include "functions.php";
create_table_sorted("rnc_notices_new");

            ?>
			<h2 align=center><a href="rnc_notices.php">Previous Notices/ Circulars >>>></a></h2>
</div>
<!-------Footer-------------------->     
<?php include"footer1.php"?>


