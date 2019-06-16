<meta http-equiv="refresh" content="60">
<?php 

include"header.php";
?>
      
           <!-- ## START OF Vice Chancellor ## -->
           <link rel="stylesheet" type="text/css" href="./style/css/boot.css" >
           	<script type="text/javascript" src="./style/scripts/bootstrap.min.js"></script>

    
<style>
a:hover{
text-decoration: none;	
}
	
@media screen and (max-width:785px){
.capnone{
display:none;
}
}
@media screen and (max-width:500px){
.alertresp{
    margin-left: -15px;
    width: 98.9% !important;    
}
    .front_right_block_spotlight li {
    width: 208px;
    /* height: 31px; */
     border-bottom:0 !important;
    list-style: none;
    position: relative;
    padding-left: 10px;
    padding-top: 10px;
    left: -30px;
}
    

}
<!--	
@media screen and (max-width: 767px) and (min-width: 600px){
#front_right_column{
width:576px;
}
#alert-box{
margin-top:10px;width: 99%;margin-left: 9px;
}	
}-->
</style>

<div class="container-fluid" style="padding:0; margin:auto;">
    <div class="container-fluid">
<div class="col-md-9 col-xs-12 col-md-offset-1">
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators capnone">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>

      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="data0/images/1.jpg" alt="First slide" style="width:100%; height:auto;">
          <div class="container capnone">
            <div class="carousel-caption">
              <h1></h1>
              
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="data0/images/2.jpg" alt="Second slide" style="width:950; height:400;">
          <div class="container capnone">
            <div class="carousel-caption">
              <h1></h1>
              
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="data0/images/3.jpg" alt="Third slide" style="width:950; height:400;">
          <div class="container capnone">
            <div class="carousel-caption">
              <h1></h1>
             
            </div>
          </div>
        </div>
		  <div class="item">
          <img class="third-slide" src="data0/images/4.jpg" alt="Third slide" style="width:950; height:400;">
          <div class="container capnone">
            <div class="carousel-caption">
              <h1></h1>
             
            </div>
          </div>
        </div>
		  <div class="item">
          <img class="third-slide" src="data0/images/5.jpg" alt="Third slide" style="width:950; height:400;">
          <div class="container capnone">
            <div class="carousel-caption">
              <h1></h1>
             
            </div>
          </div>
        </div>
          <div class="item">
          <img class="third-slide" src="data0/images/6.jpg" alt="Third slide" style="width:950; height:400;">
          <div class="container capnone">
            <div class="carousel-caption">
              <h1></h1>
             
            </div>
          </div>
          </div>
		   <div class="item">
          <img class="third-slide" src="data0/images/7.jpg" alt="Third slide" style="width:950; height:400;">
          <div class="container capnone">
            <div class="carousel-caption">
              <h1></h1>
             
            </div>
          </div>
          </div>
		  
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	</div>
        </div>
</div>
<br>

<?php include 'altertsmorquee.php';?>


<!-- Alert Box -->



    
    
    
    
    
    
    <!-- Set Container for Body Container --> 
    <div id="body_container">
     
    <!-- Set Container for Body Columns --> 
        <div id="container">
     
    <!-- Always place this link directly after Left Nav to allow screenreaders to skip navigation -->           
    
        
    <!-- Set Right Column -->  
    
            <div style="padding-left:3px;" id="front_right_column">
                <br>
                <style>
				</style>
    <div id="alert_box" class="alertresp">
	
	<cener><h5 style="padding-bottom:18px; margin-top:-10px; margin-bottom:0;"><b>Alerts</b></h5></center>
                <div class="front_right_block_spotlight">
                    <div class="text" style="height:230px;">
                    <!--FEATURED--> 
                    <marquee height="100%" direction="up"scrollamount="2" onmouseover="this.stop();" onmouseout="this.start();">

						<div class="eventList" id="&lt;!--dDocTitle--&gt;">
							<div id="link" style="padding: 0px 0 5px 13px;font-size: 14px;color: #0955A0;">
								<?php include 'alterts-alterts.php';?>
							</div>
						</div></marquee>
                            
							
                            </div>
                    </div>
                         
                    
                </div>
					<br>
          
                <!-- ##To Update Visitors Count## -->
<script> 
 
function update_nov()  
{    

if(window.XMLHttpRequest){  
xmlhttp=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
}  

  xmlhttp.onreadystatechange=function() {
  
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200) {
      document.getElementById("_visitors").innerHTML=xmlhttp.responseText;
        //location.href = 'setsession.php';
    }
  }
  
  xmlhttp.open("GET","no_of_visitors.php",true);
  xmlhttp.send();
   
  }
    update_nov();
  //window.onload=update_nov ;
</script> 
    <div id="special_nav" style="height:30px;  margin-top: -40px;">
    
    <div style="width:90%;float:left;display:inline;">
    
    <a target="" class="_self"  onclick="" href="all_programmes.php">List of Programmes</a>
    </div>
    
    <div style="float: left;width:10%;display:inline;"> <a href="all_programmes.php">»</a>
    </div>
    
    </div>
                <div id="special_nav" style="height:30px;">
    
   <div style="width:70%;float:left;display:inline;">
    
    <a target="" class="_self">Total Visitors:</a>
    </div>
    
    <div id="_visitors" style="width:10%;display:inline;">
        
    </div>
    
    </div>

            </div> 
			
            <div id="inner_right_column">
     <!-- Start Sideblock: Image and Text -->
            
            <div id="featuredNews" style="margin-top:10px;width: 99%;margin-left: 9px;">
            <div class="imageTextTtle" style="background:white;color:#0955a0; margin-top:0; margin-bottom:0;"><h5 style="height:30px" >Important Links...</h5></div>
                 
    
        <div id="imageTextContent">
        
            
        <div class="imageTextText"><br>
                
				<div id="link" style="padding: 0px 0 5px 13px;font-size: 14px;color: #0955A0;">
				
				<li><a href="/dsw.php"> Student's Welfare</a>
				<li><a href="/alumni_usict.php"> Alumni</a>
				<li><a href="/pubinfo/list170317.pdf"> USS Placement Coordinators</a>
				<li><a href="/nsscellmain.php"> NSS</a>
				<li><a href="/careers.php"> Jobs / Opportunities</a>
				<li><a href="/career_plcmnt.php"> Centralized Career Guidance and Placement Cell (CCGPC)</a>
				<li><a href="/pubinfo/list170317.pdf"> USS Placement Coordinators</a>
				
				<li><a href="/library.php"> UIRC (Library)</a><br>
				<li><a href="https://payments.billdesk.com/bdcollect/pay?p1=137&p2=14"> Annual Fee Payment for 2018-19</a>
				</div>
				
				<br>
				
				</ul>
				</div>
        		 <div style="margin-top:6px;" id="allnews">
				<a style="color: white;" href="/schools.php">University Schools</a>
				</div>
    </div>
    
    </div><!-- End Sideblock: Image and Text --> 
     
            
            </div><!-- End inner Right Column --> 
            <div id="inner_left_column">
          
        
            
            <!-- This is a Right Sidebar Video Spotlight -->
            
                <h5 style="margin-top: 10px; height:30px;">Events/Updates</h5>
                <div class="front_right_block_spotlight">
                    <div class="text">
                    <!--FEATURED--> 
                         <div class="eventList" id="&lt;!--dDocTitle--&gt;">
                            
								<?php include 'alterts-events.php';?>
								
								
                          </div>                      </div>
                         
                    
                </div>
                
            
            <div class="nobackground" style="margin-bottom:40px;background:none;">
                    <div id="allnews">
                                <a href="notices.php" style="color:white;">NOTICES/ CIRCULARS »</a> 
                        </div> 
                        </div><!-- End right sidebar block -->
            
            </div><!-- End inner left Column --> 
          
		
		  <div id="front_left_column">
            
     
    <!-- This is a Right Sidebar Video Spotlight -->
               
                <h5 style="height:30px">Admission 2019...</h5>
     
           	   <?php include 'alterts-informations.php';?>

		        <div class="clearfix"></div>
		       </div> 

        
    <!-- Set the Main Content Parameters -->    
     
        </div> <!-- End Container for Body Columns --> 
    
    
     <?php include"footer1.php"?>