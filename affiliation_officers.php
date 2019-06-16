<?php 	
	include"header.php";
	
?>


    	<div class=table-box>
        <br>
        <h2 id="heading1">AFFILIATION BRANCH</h2>
        <br>
		<h2 align="center">Officers</h2>
		<br>

		<table>
  <tr>
    <th >Name </th>
    <th style="text-align:right">Contact Details</th>
  </tr>
  <tr>
    <td >Prof. C. S. Rai <br />
      Dean, USICT</td>
    <td style="text-align:right">+91-11-25302172,25302173, 25302174 
<br />
Email:  affiliation@ipu.ac.in</td>
    </tr>
  
</table>
            <?php 
include "functions.php";
create_table_sorted("affiliation_branch");
            ?>
            
<?php include"footer1.php"
	
?>