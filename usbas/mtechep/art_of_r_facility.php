<?php include 'header.php';?>
<!--new-->
<link rel="stylesheet" type="text/css" href="gallery.css">

<nav class="navbar1" style="text-align: center;">
<ul class="auto-style1" style="text-align: center;">
<div class="dropdown">	
	<li><a href="#"><b>Admission</b></a></li>
	<div  class="dropdown-content">
		<ul>
			<li><b><a href="international_admn.php"> International Student</a></b></li>
			<li><b><a href="national_admn.php">Indian Students</a></b></li>
		</ul>
	</div>
	</div>

	<li><b><a href="http://www.ipu.ac.in/usbas/mtechep/cetmtechep280217.pdf">Syllabus for CET Exam</a></b><br></li>
	<li><b><a href="http://www.ipu.ac.in/usbas/mtechep/mtechep280217.pdf">Scheme / Syllabus</a></b></li>
	<li><b><a href="art_of_r_facility.php">State of Art Research Facilities</a></b></li>
 	<li><b><a href="faculty.php">Faculty</a></b></li>
 	<li><b><a href="gallery.php">Gallery</a></b></li>
</ul>
 </nav>
<br>
  <h1 style="text-indent: 1px; text-shadow: 1px 0 black" align="center"><strong>M.Tech. (Engineering Physics)</strong></h1>


<div class="container1" style="width: auto">

<h2 style="text-align: center">State of Art Research Facilities<br></h2>

<div class="img"> 
<img class="image" src="pics/DSC_0343 - Copy.jpg" alt="Atomic Force Microscope"><br>
<h4 class="title">Atomic Force Microscope</h4>
</div>
<div class="img"> 
<img class="image" src="pics/DSC_0348.jpg" alt="Micro Raman"><br>
<h4 class="title">Micro Raman</h4>
</div>
<div class="img"> 
<img class="image" src="pics/sun_simulator.jpg"><br>
<h4 class="title">Sun simulator</h4>
</div>  

<div class="img"> 
<img class="image" src="pics/123.jpg" alt=""><br>
<h4 class="title"></h4>
</div>
<div class="img">
<img class="image" src="pics/IMG-20160406-WA0000.jpg" alt="Scanning Electron Microcope(SEM)"><br>
<h4 class="title">Scanning Electron Microcope(SEM)</h4>
</div>
<div class="img">
<img class="image" src="pics/IMG_20160331_143313.jpg" alt="Powder X-ray Diffraction(X-RD)"><br>
<h4 class="title">Powder X-ray Diffraction(X-RD)</h4>
</div>
<div class="img">
<img class="image" src="pics/DSC_0355.jpg" alt="UV-vis NIR"><br>
<h4 class="title">UV-vis NIR</h4>
</div>
<div class="img">
<img class="image" src="pics/IMG-20160406-WA0003.jpg" alt="Nuclear Magnetic Resonance(NMR)"><br>
<h4 class="title">Nuclear Magnetic Resonance(NMR)</h4>
</div>
<br><br>
  <div class="row">
    <div class="col">
      <img class="demo opacity" src="pics/DSC_0343 - Copy.jpg" style="width:100%" onmouseover="currentDiv(1)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/DSC_0348.jpg" style="width:100%" onmouseover="currentDiv(2)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/sun_simulator.jpg" style="width:100%" onmouseover="currentDiv(3)">
    </div>
      <div class="col">
      <img class="demo opacity" src="pics/123.jpg" style="width:100%" onmouseover="currentDiv(4)">
    </div>
      <div class="col">
      <img class="demo opacity" src="pics/IMG-20160406-WA0000.jpg" style="width:100%" onmouseover="currentDiv(5)">
    </div>
      <div class="col">
      <img class="demo opacity" src="pics/IMG_20160331_143313.jpg" style="width:100%" onmouseover="currentDiv(6)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/DSC_0355.jpg" style="width:100%" onmouseover="currentDiv(7)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/IMG-20160406-WA0003.jpg" style="width:100%" onmouseover="currentDiv(8)">
    </div>
  </div>


</div>
<b><p style="font-size: 15px; margin-left: 5%;text-align: justify; font-weight: 700"><br><br><br><br><br><br><br><br>These facilities can be availed by any students who is interested in research.</p></b>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("img");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " opacity-off";
  setTimeout(showDivs, 2000);
}
</script>


	
<?php include 'footer.php';?>
