<?php 	
	include"header.php";
	
?>
<link rel="stylesheet" href="style/css/tabs.css" type="text/css">
<style>

p, ol, ul {
	text-align: justify;
}
</style>
<script>
    $(document).ready(function(){
    $("a").click(function(){
        var id=$(this).attr("id");
        $(".usct_alumni_home").hide();
        $(".news_updates").hide();
        $(".register").hide();
        $(".membership").hide();
        $(".bank_account").hide();
        $(".govern").hide();
        $(".students").hide();
        $("."+id).show();
    });
});
</script>


    	<div class=table-box>
        <br>
        <h2 id="heading1">ALUMNI</h2>
        <br>
            <div id='cssmenu1'  style="margin-left:200px;">
<ul>
   <li><a href='alumni_usict.php'>USICT</a></li>
   <li><a href='alumni_uslls.php'>USLLS</a></li>
   <li><a href='alumni_usbt.php'>USBT</a></li>
   <li><a href='alumni_usem.php'>USEM</a></li>
   <li class='active'><a href='alumni_usct.php'>USCT</a></li>
   <li><a href='alumni_usms.php'>USMS</a></li>
</ul>
</div>
<br>
<br>  
            <div id="USCT" >
    
               <div id="cont" style="margin-left:200px;">
				<div id="colOne">
				<div class="box">
				<h3>&nbsp;</h3>
				<ul class="bottom">
					<li><a id="news_updates">News &amp; Updates</a> </li>
					<li><a href="https://goo.gl/forms/qRu2Xr9HMcYXEGQl1">Registration & Enrollment</a></li>
					<li><a href="https://drive.google.com/open?id=1wx5zZqJSi7dKnXFY3XsRFocIxCGTZ6s7">Membership Rules</a></li>
					<li><a href="">Bank Account / Payment</a></li>
					<li><a href="/public/usctalmnigvbody030217.pdf">Governing Body</a></li>
					<li><a href="">Passed Out Students</a></li>
					<li><a href="">Registered Alumni Members</a></li>
					<li><a href="https://drive.google.com/open?id=1sizrknLJQNkEPVANXgzixDSdKWRKqzm1">Newsletter</a></li>
					<li><a href="">Alumni Meet</a></li>
					
				</ul>
				</div>
				</div>
  
  <div id="colTwo">

					<h2>USCT Alumni Association </h2>

				>>>>> <font size=4>  <a href="https://goo.gl/forms/VdNFybmxHHBtZWIc2">Alumni Feedback Form</a>  </font><<<<<

				<br><br>
				<h3> 
				<p>The USCT Alumni Association was established in 2007 with the support of all the three pillars of our USCT community: the faculty, the Alumni and the students. USCTAA was formed with the following objectives :-</p>
				<ul><li>	To provide a vibrant forum that promotes interaction and networking among alumni of the Institute; 
				<li>	To help alumni achieve their professional and societal goals; 
				<li>	To help alumni in their hour of need; 
				<li>	To facilitate the association of alumni amongst themselves with their Alma Mater; 
				<li>	To contribute to the Institute’s vision of being recognized among the world’s leading institutions in academics, research, outreach, and innovation; 
				<li>	To function on charitable basis, and to run the Association on ‘no profit no loss’ basis; 
				<li>	To create awareness about the Institute and its alumni in the public; and 
				<li>	To assist deserving students from the sections of the society financially and otherwise. 
				</ul>
				Mail us at <a mail:usctalumni@ipu.ac.in>usctalumni@ipu.ac.in</a>

				<br/><br/>Find us on Facebook :- <a href="https://www.facebook.com/usctalumniassoc/">https://www.facebook.com/usctalumniassoc/</a>
				<br/>LinkedIn :- <a href="https://www.linkedin.com/groups/10334654">https://www.linkedin.com/groups/10334654</a>

				</ul>
				</h3>

  


<div id="colTwo" class="news_updates" style="display:none">
                   <center style="font-weight: bold"><u>Registration & Enrollment</u></center>
					<br>
					  <p>All registered alumni are invited for the Meet. 
					  
					  <h3><font color="#000000">Nominations are invited for Election of USICT Alumni Association</font></h3>
					  <p>Interested Alumni may kindly send their consent to amit@ipu.ac.in. </p>
					  <p>&nbsp;. </p>
					  <p>&nbsp; </p>
					  <p>&nbsp;</p>
 </div>
				   

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p class="indent">&nbsp;</p>

  	</div>
	</div>
  	</div>
</div>
<?php include"footer1.php"
	
?>