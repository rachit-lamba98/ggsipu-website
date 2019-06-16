<?php 	
	include"header.php";
	
?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
    	<div class=table-box>
        <br>
        <h2 id="heading1">Finance & Accounts Department  - Notices / Circulars</h2>
        
          
	
<?php 
include "functions.php";
create_table_sorted("notice_accounts");
            ?>
			<h2 align=center><a href="Misc_Circulars_FNAD.php">Previous Notices/ Circulars >>>></a></h2>
</div>



<?php include"footer1.php"
	
?>