<?php 	
	include"header.php";
?>

<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
        <br>
 <div class=table-box>
        <h2 id="heading1">LIBRARY</h2>
        <br>
            <div id='cssmenu1'class="dsw">
<ul><li class='active'><a href='library.php'>Library</a></li>
    <li><a href='library_glance.php'>UIRC: At a Glance</a></li>
    <li><a href='library_resources.php'>UIRC Resources</a></li>
   <li><a href='library_consortium.php'>Consortium Access</a></li>
   <li><a href='library_online_resources.php'>ONLINE Resources</a></li>
   <li><a href='library_open_access.php'>Open Access Archives</a></li>
   
                </ul></div>
        <h2 id="heading1">UNIVERSITY INFORMATION RESOURCES CENTRE (LIBRARY)</h2>
	   <br>
	
<?php 
include "functions.php";
create_table_sorted("library_notice");
            ?>
</div>
<?php include"footer1.php"
	
?>