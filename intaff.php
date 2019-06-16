<?php include"header.php";?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
<div class=table-box>
    <br>
        <h2 id="heading1">INTERNATIONAL AFFAIRS</h2>
        <br>
          <center>  <div id='cssmenu1'class="dsw">
<ul>
    <li class='active'><a href='intaff.php'>Notices</a></li>
    <li ><a href='ia_director.php'> Director</a></li>
    <li><a href='http://www.ipu.ac.in/int_affairs/teamint220514.pdf'> Team-OIA</a></li>
   <li><a href='/admission2016/adm2016notices/admfrgio030316.pdf'>Admission Procedure</a></li>
   <li><a href='https://goo.gl/photos/CCbdjEprh94zybx77'>Photo Gallary</a></li>
   <li><a href='ia_contact.php'>Contact</a></li>
</ul>
</div></center>
<br><br>
    
<?php 
include "functions.php";
create_table_sorted("international_affairs");
            ?>
</div>
<!-------Footer-------------------->     
<?php include"footer1.php"?>