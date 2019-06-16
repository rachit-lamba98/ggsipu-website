<?php include"header.php";?>
<!-------------------------------------------------------->
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
<br>
<h2 id="heading1" align="center">UNIVERSITY REGULATIONS</h2>
<br><center><div id='cssmenu1' class="dsw">
<ul>
<!--   <li><a href='#'>Director</a></li>-->
<li><a href='statutory_notices.php'>NOTICES</a></li>
    <li ><a href='so_act.php'>ACT</a></li>
    <li><a href='so_statutes.php'>STATUTES</a></li>
   <li><a href='so_ordinance.php'>ORDINANCES</a></li>
   <li class='active'><a href='so_regulation.php'>REGULATIONS</a></li>
   <li><a href='so_statutory_bodies.php'>STATUTORY BODIES</a></li>
</ul>
</div>
</center>

<br>
<br>
 <div class=table-box>
   
<?php 
include "functions.php";
create_table_sorted("so_regulation");
            ?>
</div>
<?php include"footer1.php"?>