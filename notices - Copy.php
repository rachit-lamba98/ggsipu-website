<?php 	
	include"header.php";
	
?>


    	<div class=table-box>
        <br>
        <h2 id="heading1">NOTICES/CIRCULARS</h2>
        <br>


           
	
<?php 
include "functions.php";
create_table_sorted("notices_circulars");
            ?>
</div>

<center><a href="notice_archive.php"><u>Click here for Notices before May 2015<br><br></u></a></center>
<?php include"footer1.php"
	
?>