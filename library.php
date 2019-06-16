<?php 	
	include"header.php";
?>

<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
        <br>
 <div class=table-box>
        <h2 id="heading1">UNIVERSITY INFORMATION RESOURCES CENTRE (LIBRARY)</h2>
        <br>
            <div id='cssmenu1'class="dsw">
<ul><li class='active'><a href='library.php'>UIRC-Notices</a></li>
    <li><a href='/urc/digital.htm'>More about UIRC...</a></li>
    
                </ul></div>
        
<?php 
include "functions.php";
create_table_sorted("librarym");
            ?>
</div>
<?php include"footer1.php"
	
?>