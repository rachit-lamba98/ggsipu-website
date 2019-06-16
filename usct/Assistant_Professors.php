<?php include"usct_header.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);
?>
<script>
$(document).ready(function() {
    $("i").click(function(event) {
       var id=$(this).attr("id");
	$("."+id).fadeToggle("10000","linear");

    });
});
</script>

 <div class="usict_prof">
     
<br>
<div class="big">
    
    <?php 
    include "../functions.php";
    professor("ASSISTANT PROFESSORS","University School of Chemical Technology","Assistant Professor");
    ?>
      
  </div>  
</div>
<?php include"../uss_footer.php"?>