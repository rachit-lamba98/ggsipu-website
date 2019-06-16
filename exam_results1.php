<?php 	
	include"header.php";
	
?>


    	<div class=table-box>
        <br>
        <h2 id="heading1">EXAMINATION RESULTS</h2>
        <br>
	
<?php 
include "functions.php";
create_table_sorted("results");
            ?>
</div>
<?php include"footer1.php"
	
?>