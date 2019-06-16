<?php 	
	include"header.php";
?>

    	<div class=table-box>
        <br>
        <h2 id="heading1">TENDER/QUOTATION</h2>
        <br>
            <?php 
include "functions.php";
create_table_sorted("tender_notice");
            ?>
</div>
<?php include"footer1.php"
?>