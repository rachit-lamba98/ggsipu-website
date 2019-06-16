<?php
include 'header.php';
?>
<script>
  ( function( $ ) {
$( document ).ready(function() {
$('#cssmenu > ul > li > a').click(function() {
  $('#cssmenu li').removeClass('active');
  $(this).closest('li').addClass('active');	
  var checkElement = $(this).next();
  if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
    $(this).closest('li').removeClass('active');
    checkElement.slideUp('normal');
  }
  if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
    $('#cssmenu ul ul:visible').slideUp('normal');
    checkElement.slideDown('normal');
  }
  if($(this).closest('li').find('ul').children().length == 0) {
    return true;
  } else {
    return false;	
  }		
});
});
} )( jQuery );
</script>
	
           <!-- ## START OF Contact Us ## -->

<br>		   
<div id='cssmenu'>

<center><h2 id="heading1" >CONTACT US</h2></center>
<br>
<ul>
   <li class='has-sub'><a hreff='#'><span>Helpline Numbers</span></a>
      <ul>
         <li><a hreff='#'><span>
		 
           <table>
  <tr> 
    
    <th >Section</th>
    <th >Phone Number </th>
  </tr>
  <tr >
    
    <td >Admission Helpline </td>
    <td >011-25302167</td>
    
  </tr>
  <tr >
    <td colspan="3" align="center" >The admission helpline is operational from 9.00 am to 5.30 pm on all working days (Monday to Friday excluding  Gazetted holidays / Notified holidays)</td>
  </tr>
 
</table>
         
		 </span></a></li>
         
      </ul>
   </li>
   
   <li class='has-sub'><a hreff='#'><span>University Schools / Administration</span></a>
      <ul>
         <li><a hreff='#'><span>
		 
           <h1 style="text-align:center">UNIVERSITY SCHOOLS / ADMINISTRATIVE </h1>
          <table id="customers">
          <td>
           <a href="/schools.php">University Schools</a>
           <p>&nbsp;</p>
           <a href="/admin_officers.php">Administrative  Officers</a>
          </td></table>
          
		 </span></a></li>
         
      </ul>
   </li>
   
   
   <li class='has-sub'><a hreff='#'><span>Examination</span></a>
      <ul>
         <li><a hreff='#'><span>
		 
           <h1 style="text-align:center">OFFICERS OF THE EXAMINATION DIVISION (OPERATION) </h1>
           <table id="customers">
  <tr bgcolor="#eeeeee">
    <th colspan="2"><div align="center"><b>Controller of Examinations (Operations) </b></div></th>
  </tr>
  <tr>
    <td><a hreff="http://ipu.ac.in/usitnweb/faculty/dr-pravin-chandra.htm"> Prof.. Pravin Chandra </a></td>
    <td ><div align="right"><a hreff="tel://91-11-2530-2250">+91 (11) 2530-2250</a></div>      <div align="right"><br>
    </div></td>
  </tr>
  <tr>
    <td width="53%"><a hreff="http://ipu.ac.in/usitnweb/faculty/dr-pravin-chandra.htm"> </a>P.S. to Controller of Examination (Operations) </td>
    <td width="47%" ><div align="right"><a hreff="tel://91-11-2530-2252">+91 (11) 2530-2252<br>
      Fax:+91-11- 25302248    </a></div></td>
  </tr>

</table>
         
		 </span></a></li>
         
      </ul>
   </li>
   
   
   
   
   <li class='has-sub'><a hreff='#'><span>Anti Ragging</span></a>
      <ul>
         <li><a hreff='#'><span>
		 
           <h1 style="text-align:center">24X7 ANTI-RAGGING HELPLINE</h1>
           <table id="customers">
  <tr> 
    <td >Toll Free Anti-Ragging Helpline Number </td>
    <td ><strong>1800-180-5522</strong></td>
  </tr>
  <tr> 
    <td>E-Mail</td>
    <td>helpline@antiragging.net</td>
  </tr>
  <tr>
    <td>The other Toll Number </td>
    <td>155222</td>
  </tr>
               <tr>
    <td><a hreff="/affiliates/raging270810.pdf">Anti-Ragging 
          Measures</a></td>
    <td><a hreff="/contact/raging270712.pdf">Preventive steps to curb ragging in GGSIP University</a></td>
  </tr>
</table>
         
		 </span></a></li>
         
      </ul>
   </li>
   
   
</ul>
</div>
           
           
           
           <div class="top_page" style="align-content:center; text-align:center; margin-top:20px">
           <h2 style=""><u>Contact Details</u></h2><br>
           <h2>Guru Gobind Singh Indraprastha University </h2>
			<h3>Sector - 16C, Dwarka,  New Delhi - 110078 (India)</h3>

			<br><h3>Phone: +91-11-25302170, Fax: +91-11- 25302111</h3><br>
			<h3>E-Mail Id: ggsipu.pr@rediffmail.com, pro@ipu.ac.in</h3>
			
            <br><br>
            <iframe width="700" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=ggsipu+sector+16-c+dwarka&amp;aq=&amp;sll=28.732743,77.094154&amp;sspn=0.132161,0.219383&amp;ie=UTF8&amp;hq=ggsipu+sector+16-c&amp;hnear=Dwarka,+New+Delhi,+Delhi&amp;ll=28.59658,77.02137&amp;spn=0.052752,0.072956&amp;z=13&amp;iwloc=A&amp;output=embed"></iframe>
            
           </div>
      
          
    
        <?php
include 'footer1.php';
?>