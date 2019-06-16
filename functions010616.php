<?php
/* function to create table in a sorted format according to year and months*/
	function create_table_sorted($table_name)
{
	include"../../credential.conf";
	$sql = 'SELECT * FROM '.$table_name.' ORDER BY s_no desc LIMIT 10';
	$result = mysqli_query($conn, $sql);
	
?>
	<h3><small>*Click on the title to download the pdf</small></h3>
	<table>
    	
    	<tr>        
        	<th class="table-title">Title/Notices</th>
        	<th class="date1">Uploading Date</th>
    	</tr>
    	
    	<tbody>
<?php        
        
	while($row = mysqli_fetch_assoc($result))
	{
		$newDate = date("d-m-Y", strtotime($row['uploading_date']));		
?>
    	<tr>
        <td><a href="<?php print $row['links']; ?>"><?php print $row['title']; ?></a></td>
        <td><?php print $newDate; ?></td>
    	</tr>
<?php
	}       
?>        
<?php
	for($i=date('m');$i!=0;$i--)
	{
    		$dateObj   = DateTime::createFromFormat('!m', $i);

		$sql = "SELECT * FROM ".$table_name." WHERE MONTH(uploading_date) = $i AND YEAR(uploading_date) = ".date('Y')." AND s_no < (SELECT MAX(s_no) FROM ".$table_name.")-8 ORDER BY s_no desc" ;
		$result = mysqli_query( $conn,$sql );

if (mysqli_fetch_row($result)) {
?>
<tr id="<?php print($dateObj->format('F').date('Y')) ?>"  class="item-collapse">
        	<td colspan="3"><?php print($dateObj->format('F')."     ".date('Y')); ?></td>
		</tr>
<?php

}
		
		while($row = mysqli_fetch_assoc($result))
		{
			$newDate = date("d-m-Y", strtotime($row['uploading_date']));
			
?>
			<tr class="<?php print($dateObj->format('F').date('Y')) ?>" style="display:none">  
	        	<td><a href="<?php print $row['links']; ?>"><?php print $row['title']; ?></a></td>         
	        	<td><?php print $newDate; ?></td>    
		    	</tr>

<?php
		}
?>

    
<?php
    
	}
    $year=date('Y');
    for($i=0;$i<2;$i++)
    {
        
        $year=$year-1;
?>
        <tr id="<?php print("year".$year) ?>"  class="year-collapse">
        <td  style="text-align:center" colspan="3"><?php print($year); ?></td>
        </tr>
<?php
        for( $j=12;$j>0;$j--)
        {
            $dateObj   = DateTime::createFromFormat('!m', $j);
?>
            
<?php
            $sql = "SELECT * FROM ".$table_name." WHERE MONTH(uploading_date) = $j AND YEAR(uploading_date) = ".$year." ORDER BY s_no desc" ;
            $result = mysqli_query($conn, $sql);
    
?>
		
<?php
		$y=0;
            while($row = mysqli_fetch_assoc($result))
            {
		$y=$y+1;
		if($y==1)
		{
?>
			<tr id="<?php print($dateObj->format('F').$year) ?>"  class="<?php print("year".$year) ?>" style="display:none">
        		<td class="item-collapse" colspan="3"><?php print($dateObj->format('F')."     ".$year); ?></td>
            		</tr>
		
<?php
		}
		
                
                $newDate = date("d-m-Y", strtotime($row['uploading_date']));
                
?>
                <tr class="<?php print($dateObj->format('F').$year) ?>" style="display:none">  
                <td><a href="<?php print $row['links']; ?>"><?php print $row['title']; ?></a></td>         
	        	<td><?php print $newDate; ?></td>    
		    	</tr>
<?php
		      }
?>

<?php
        }
    }
	
?>
    </tbody></table>
<?php
    mysqli_close($conn);
    }
?>






<?php
/*  function to create table as it is*/
function create_table($table_name)
{
	include"../../credential.conf";
	$sql = 'SELECT * FROM '.$table_name.' ORDER BY s_no desc';
	$result = mysqli_query($conn, $sql);
	
?>



	<h3><small>*Click on the title to download the pdf</small></h3>
	<table>
    	
    	<tr>        
        	<th class="table-title">Title/Notices</th>
        	<th class="date1">Uploading Date</th>
    	</tr>
    	
    	<tbody>
<?php        
        
	while($row = mysqli_fetch_assoc($result))
	{
		$newDate = date("d-m-Y", strtotime($row['uploading_date']));
		
?>
    	<tr>
        <td><a href="<?php print $row['links']; ?>"><?php print $row['title']; ?></a></td>         
        <td><?php print $newDate; ?></td>   
    	</tr>
<?php
	}       
?>

    </tbody></table>
<?php
    mysqli_close($conn);
    }

?>






<?php 

/*function from professors*/

function professor($heading,$school,$designation)
{
include"../../../credential.conf";
$sql = "SELECT * FROM professors where university_school='".$school."' AND designation='".$designation."' order by name";
	$result = mysqli_query( $conn, $sql );
 ?>                 

<h1><strong><?php print $heading;?></strong></h1>
<center><p>(in alphabetical order)</p></center>

<?php
	while($row = mysqli_fetch_assoc($result))
	{
?>
  <div class="proff">
    <h2 text-align="justify"><?php echo $row['name']?></h2><p text-align="justify">(<?php echo $row['designation']?>)</p>
      <h4 text-align="justify"><em><strong>Area Of Specialization:</strong></em><?php echo "\t".$row['area_of_specialization']?></h4>     
  <i class="fa fa-chevron-circle-down fa-2x button1" id="<?php echo "click".$row['s_no']?>"></i>
  
  
  
  
  
  <div class="<?php echo "click".$row['s_no']?>" style="display:none" >
    
        <img src="../images/<?php echo $row['s_no']?>.jpeg" alt='<?php echo $row['name']?>' class="prof_pic" />
    
        <div id="contact-info" class="vcard">
        
           
        
            <h1 class="fn"></h1>
            
        
            <h4 text-align="justify">
                 <?php
        if ($row['room_no']){
    ?>
                Room No: <span class="tel"><?php echo $row['room_no']?></span><br><br>
                <?php
    }
        ?>
                <?php
        if ($row['Contact_Number_Official']){
    ?>
                Phone No(Office): <span class="tel"><?php echo $row['Contact_Number_Official']?></span><br><br>
                <?php
    }
        ?>
                
                
               <?php
        if ($row['Email_id']){
    ?>
                Email-id: <span class="tel"><?php echo $row['Email_id']?></span><br><br>
                <?php
    }
        ?>
            </h4>
        </div>
           
        <br>
        <div class="ink">
            
            <?php
        if ($row['educational_qualification']){
    ?>
                <article><strong>Education</strong></article>
            <article><?php echo $row['educational_qualification']?></article> 
            <br>
                <?php
    }
        ?>
             <?php
        if ($row['field_of_interest']){
    ?>
                <article><strong>Field Of Interest</strong></article>
            <article><?php echo $row['field_of_interest']?></article> 
            <br>
                <?php
    }
        ?>
             <?php
        if ($row['teaching_experience']){
    ?>
                <article><strong>Teaching Experience</strong></article>
            <article><?php echo $row['teaching_experience']?></article> 
            <br>
                <?php
    }
        ?>
             <?php
        if ($row['Research_publications']){
    ?>
                <article><strong>Research Publication</strong></article>
            <article><?php echo $row['Research_publications']?></article> 
            <br>
                <?php
    }
        ?>
             <?php
        if ($row['Awards_and_achievements']){
    ?>
                <article><strong>Awards And Achievements</strong></article>
            <article><?php echo $row['Awards_and_achievements']?></article> 
            <br>
                <?php
    }
        ?>
             <?php
        if ($row['additional_information']){
    ?>
                <article><strong>Additional Information</strong></article>
            <article><?php echo $row['additional_information']?></article> 
            <br>
                <?php
    }
        ?>
        </div>
       
    </div>
  
  
 </div>
      <?php
    }
    mysqli_close($conn);
}
     ?>