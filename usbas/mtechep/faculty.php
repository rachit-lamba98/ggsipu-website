<?php include 'header.php';?>

<style>
    .container1{
      margin: 5%;
    }
    button.accordion {
        background-color: #eee;
        color: #444;
        cursor: pointer;
        padding: 18px;
        width: 100%;
        text-align: center;
        border-bottom: 2px solid grey;
        outline: none;
        transition: 0.4s;
    }


    button.accordion.active, button.accordion:hover {
        background-color: #ddd;
    }


    div.panel {
        padding: 0 18px;
        background-color: white;
        display: none;
        border-bottom: 2px solid grey;
    }

    .panel p {
      text-align: center;
    }

    .panel img {
      width:10rem;
  		height:10rem;
  		border-radius:7px;
      margin-left: 570px;
    }

    button.accordion:after {
        content: '\02795';
        font-size: 20px;
        color: #777;
        float: right;
        margin-left: 5px;
    }

    button.accordion.active:after {
        content: "\2796";
    }
</style>
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

<div class="container1">
 <h1 style="text-indent: 1px; text-shadow: 1px 0 black" align="center"><strong>M.Tech. (Engineering Physics)</strong></h1>
<br>
<h1 style="text-align:center; text-indent: 1px;font-size: 20px"><br>Faculty</h1><br>

<button class="accordion"><b>Prof. Avinash C. Sharma</b><br>&nbsp;&nbsp;&nbsp;&nbsp;(Professor)</button>
<div class="panel">
  <br><img src="pics/acs.jpeg">
  <p><br><b>Area Of Specialization:</b> Theoretical Particle Physics<br><br>
    <b>Room No:</b> BFR-207<br><br>
    <b>Phone No(Office):</b> 011-2530 2406 <br><br>
    <b>Email-id:</b> acsharma1956@gmail.com</p><br>
    <a href="acs_publ.php"><p><b>Research Publications</b></p></a><br>
</div>

<button class="accordion"><b>Prof. Shruti Aggarwal</b><br>&nbsp;&nbsp;&nbsp;&nbsp;(Professor)</button>
<div class="panel">
  <br><img src="pics/shruti.jpg">
  <br><br><p><b>Area Of Specialization: Solar Photovoltaics, Crystal Growth, Silver nanowire based transparent contacts, Thermoluminescence dosimetry</b> <br><br>
  <a href="sa_publ.php"><p><b>ResearchPublications</b></p></a><br>
</div>

<button class="accordion"><b>Prof. Anu Venugopalan</b><br>&nbsp;&nbsp;&nbsp;(Professor)</button>
<div class="panel">
  <br><img src="pics/av.jpeg">
  <p><br><br><b>Area Of Specialization:</b>	Foundations of quantum mechanics, quantum information, confined quantum systems (theory)
    <br><br><b>Room No:</b> B-301<br><br>
    <b>Phone No(Office):</b> 011-25302410<br><br>
    <b>Email-id:</b> anu@ipu.ac.in</p><br>
    <a href="av_publ.php"><p><b>Research Publications</b></p></a><br>
</div>

<button class="accordion"><b>Dr. Rajesh Kumar</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Assistant Professor)</button>
<div class="panel">
  <br><img src="pics/rajesh.jpg">
  <br><br><p><b>Area Of Specialization:</b> Materials  Science,  Polymers,  Nanocomposite Polymers, Ion Beam Science, Radiation Physics
  <br><br><a href="rk_publ.php"><p><b>Research Publications</b></p></a><br>
</div>


<button class="accordion"><b>Dr. Anjana Bagga</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Assistant Professor)</button>
<div class="panel">
  <br><img src="pics/ab.jpeg">
  <p><br><b>Area Of Specialization:</b> Mesoscopic Condensed Matter Physics: Optical and Transport properties of semiconductor nanostructures, nanostructured thermoelectric materials, solar cells
   <br><br>
    <b>Phone No:</b> 9313503008 <br><br>
    <b>Email-id:</b> anjana.bagga@gmail.com</p><br>
    <a href="ab_publ.php"><p><b>Research Publications</b></p></a><br>
</div>

<button class="accordion"><b>Dr. S. Neeleshwar</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Assistant Professor)</button>
<div class="panel">
  <br><img src="pics/sn.jpeg">
  <p><br><b>Area Of Specialization:</b> Nanomaterials, Thermoelectic materials, Superconductivity, Magnetic materials
	 <br><br>
    <b>Phone No:</b>9971662685 <br><br><b>
      Email-id:</b> sn@ipu.ac.in</p><br>
    <a href="sn_publ.php"><p><b>Research Publications</b></p></a><br>
</div>


<button class="accordion"><b>Dr. Kriti Batra</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Assistant Professor)</button>
<div class="panel">
  <br><img src="pics/kriti.jpg">
  <br><br><p><b>Area Of Specialization: </b>Theoretical Atomic and Molecular Physics, Quantum Heterostructures	<br><br>
  <a href="kb_publ.php"><p><b>Research Publications</b></p></a><br>
</div>


<button class="accordion"><b>Mr. Mukesh Kumar</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Assistant Professor)</button>
<div class="panel">
  <br><img src="pics/mukesh.jpg">
   <b>Phone No:</b>9910722821 <br><br><b>
      Email-id:</b> iamspimk@</p><br>
  <br><br><p><b>Area Of Specialization:</b> Lasers and Photonics<br><br></p>
</div>
</div>



<script>
    var acc = document.getElementsByClassName("accordion");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].onclick = function(){
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.display === "block") {
                panel.style.display = "none";
            } else {
                panel.style.display = "block";
            }
        }
    }

</script>

<?php include 'footer.php';?>
