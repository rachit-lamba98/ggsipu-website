<?php 	
	include"header.php";
?>

    	<div class=table-box>
        <br>
        <h2 id="heading1">ADMISSION BRANCH</h2>
        
		
		
	<p align="center"><b><Font size="3">
		
	 <a href="/Pubinfo2019/Admission2019mian/adm2019main.htm">Admission 2019</a> | <a href="cancellation_admission.php">Cancellation / Re-Admission</a>&nbsp; 
	</h3></b>





            <?php 
include "functions.php";
create_table_sorted("admission_branch");
            ?>
</div>
<?php include"footer1.php"
?>