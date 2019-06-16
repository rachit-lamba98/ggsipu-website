<?php 	
	include"header.php";
	
?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
    	<div class=table-box>
        <br>
        <h2 id="heading1">USBT : Notices / Circulars</h2>
        
          
	
<?php 
include "functions.php";
create_table_sorted("notice_usbt");
            ?>
			<h2 align=center><a href="/usbt/Notice_Circular.php">Previous Notices/ Circulars >>>></a></h2>
</div>



<?php include"footer1.php"
	
?>