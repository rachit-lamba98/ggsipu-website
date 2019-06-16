<?php 	
	include"header.php";
	
?>

    	<div class=table-box>
        <br>
        <h2 id="heading1">GENERAL ADMINISTRATION</h2>
		<br>
		<h2 align="center">Officers</h2>
		<br>
		<table>
  <tr>
    <th >Name </th>
    <th style="text-align:right">Contact Details</th>
  </tr>
  <tr>
    <td >Dr. Pankaj Aggarwal <br />
      Dy. Registrar.</td>
    <td style="text-align:right">+91-11 - 25302138, 25302139 
<br />
Email:ga@ipu.ac.in</td>
    </tr>
  
</table>
        <br>
	
<?php 
include "functions.php";
create_table_sorted("general_administration");
            ?>
</div>
<?php include"footer1.php"
	
?>