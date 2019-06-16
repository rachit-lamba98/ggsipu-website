<!DOCTYPE html>
<HTML><HEAD><TITLE>GGS Indraprastha University</TITLE> 

<body>
<BODY bgcolor="#ECF7df" link="#804000" vlink="#804000"
alink="#804000" topmargin="0" leftmargin="0" marginwidth="0"
marginheight="0" onload=FrontPage_Form1.regno.focus()>

<table width='100%' border='0' cellspacing=0 cellpadding=0  align=center> 
 <tr>
  <td width="100%"> 
    <p align="center"><font color="#000089" face="Arial"><b><big><big>Guru Gobind Singh Indraprastha University</big></big></b></font><strong><font size="5"><br>
      </font><font color="#00089" face="Arial" size="3">Sector 16-C, Dwarka, New Delhi-110078</font></strong>
    <p>
</td>
  </tr>
  <tr>
  <td><h1 align=center>CET 2016 Results</h1></td></tr>
  </TABLE>

<br>


<?php
if(isset($_POST['regno']) &&($_POST['select']) ) //&&($_POST['upload_date']))
{
$title=htmlentities($_POST['regno']);
$link=htmlentities($_POST['select']);
//$date=htmlentities($_POST['upload_date']);
//$table_name=htmlentities($_POST['tablename']);

//$title=nl2br($title);
}
?>

<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "cet16res";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM web105 where rollno='" .$title. "'";
$result = $conn->query($sql);

echo "You enters roll No" .$title." and  " .$link."";

if ($result->num_rows > 0) {
     // output data of each row
     while($row = $result->fetch_assoc()) {
        echo "<table align=center width=500 border=1 cellpadding=10% bordercolor=grey>";
		echo "<tr><td width=200> CET Roll Number </td><td>". $row["rollno"]. "</td></tr>";
		echo "<tr><td> Test Code </td><td> ". $row["rollno"]. "</td></tr>";
		echo "<tr><td> Candidate Name </td><td> ". $row["rollno"]. "</td></tr>";
		echo "<tr><td> Region </td><td> ". $row["rollno"]. "</td></tr>";
		echo "<tr><td> Category </td><td> ". $row["rollno"]. "</td></tr>";
		echo "<tr><td> Rank / Status</td><td> ". $row["rollno"]. "</td></tr>";
		echo "</table>";
     }
	}
 else {
     echo "<h2 align=center>Record NOT Found.</h2> ";
	 echo "<p align=center>Check you roll number / Programme and try again <br> OR <br> Kindly visit University for further information";
	 
	 
}

$conn->close();
?> 
 <p align="center"> | <a href="http://ipu.ac.in/home/ipudisclaimer.htm">Disclaimer </a> | </p>
</body>
</html>
