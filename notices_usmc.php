<?php 	
	include"header.php";
	
?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
    	<div class=table-box>
        <br>
        <h2 id="heading1">USMS : Notices / Circulars</h2>
        
          
	
<?php 
include "functions.php";
create_table_sorted("notice_usmc");
            ?>
			
</div>



<?php include"footer1.php"
	
?>