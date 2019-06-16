<?php 	
	include"header.php";
	
?>


    	<div class=table-box>
        <br>
        <h2 id="heading1">AFFILIATION BRANCH</h2>
        <table><tr>
		<td><a href="affiliation_guidelines.php"><b>Policy / Guidelines</b></a></td>
		<td><a href=""><b>Forms</b></a></td>
		<td><a href="affiliation_officers.php"><b>Officers</b></a></td>
		</tr></table>
		
		
<P align=center><b><a href="listinstitute041018.php">>> List of Affiliated / Government Institutions, 2018-19 </a></b></p>

		<P align=center><b><a href="/affiliates/Instlist220318.pdf">>> List of Affiliated / Government Institutions With Details of Programme and Intake Approved For Academic Session 2017 - 2018 </a></b></p>

<P align=center><a href="/affiliates/list201617060917.pdf">>> List of Affiliated / Government Institutions With Details of Programme and Intake Approved For Academic Session 2016 - 2017 </a></p>
<P align=center><a href="/affiliates/listinstitutes030216.pdf">>> List of Affiliated / Government Institutions With Details of Programme and Intake Approved For Academic Session 2015 - 2016 </a></p>
		
            <?php 
include "functions.php";
create_table_sorted("affiliation_branch");
            ?>
            
<?php include"footer1.php"
	
?>