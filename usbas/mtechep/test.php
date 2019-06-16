<?php include 'header.php';?>
<link rel="stylesheet" type="text/css" href="gallery.css">
<style>
.img {display:none}
.demo {cursor:pointer}
</style>
<body>

 <h1 align="center"><strong>M.Tech. (Engineering Physics)</strong></h1>



<div class="container1" style="width: auto">

<h2 style="text-align: center">State of Art Research Facilities<br></h2>

<div class="img"> 
<img class="image" src="pics/DSC_0343 - Copy.jpg" "><br>
<h4 class="title">tere</h4>
</div>
<div class="img"> 
<img class="image" src="pics/DSC_0348.jpg" ><br>
<h4 class="title"></h4>
</div>
<div class="img"> 
<img class="image" src="pics/DSC_0349 - Copynew.jpg"><br>
<h4 class="title"></h4>
</div>
<div class="img"> 
<img class="image" src="pics/123.jpg"><br>
<h4 class="title"></h4>
</div>
<div class="img">
<img class="image" src="pics/IMG-20160406-WA0000.jpg"><br>
<h4 class="title"></h4>
</div>
<div class="img">
<img class="image" src="pics/IMG_20160331_143313.jpg"><br>
<h4 class="title"></h4>
</div>
<div class="img">
<img class="image" src="pics/DSC_0355.jpg"><br>
<h4 class="title"></h4>
</div>
<div class="img">
<img class="image" src="pics/IMG-20160406-WA0003.jpg"><br>
<h4 class="title"></h4>
</div>
<br><br>
  <div class="row">
    <div class="col">
      <img class="demo opacity" src="pics/DSC_0343 - Copy.jpg" style="width:100%" onclick="currentDiv(1)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/DSC_0348.jpg" style="width:100%" onclick="currentDiv(2)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/DSC_0349 - Copynew.jpg" style="width:100%" onclick="currentDiv(3)">
    </div>
      <div class="col">
      <img class="demo opacity" src="pics/123.jpg" style="width:100%" onclick="currentDiv(4)">
    </div>
      <div class="col">
      <img class="demo opacity" src="pics/IMG-20160406-WA0000.jpg" style="width:100%" onclick="currentDiv(5)">
    </div>
      <div class="col">
      <img class="demo opacity" src="pics/IMG_20160331_143313.jpg" style="width:100%" onclick="currentDiv(6)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/DSC_0355.jpg" style="width:100%" onclick="currentDiv(7)">
    </div>
    <div class="col">
      <img class="demo opacity" src="pics/IMG-20160406-WA0003.jpg" style="width:100%" onclick="currentDiv(8)">
    </div>
  </div>
</div>

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