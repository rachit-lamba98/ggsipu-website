<style>

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
}

form {
  max-width: 650px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
  color:#041E54;
}

input[type="text"],
input[type="date"],
textarea,
select {
  font-size: 15px;
  padding: 10px;
  width: 100%;
  background-color: #e8eeef;
  color: #000000;
  margin-bottom: 30px;
}

input[type="radio"]{
	font-size: 12px;
  background-color: #e8eeef;
  color: #8a97a0;
}

button {
  padding: 10px 30px 10px 30px;
  color: #FFF;
  background-color: #041E54;
  font-size: 15px;
  text-align: center;
  border-radius: 5px;
  width: 100%;
  margin-top: 10px;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  display: inline;
}

</style>

<script>
    function display_hint(){
	
    var ele = document.getElementById("table_name");
    var table = ele.options[ele.selectedIndex].value;
	if(table=="results")
	{
		document.getElementById("semester").style.display = 'block';
	}
	
 	
}
    
</script>

<?php 
$servername = "localhost:3306";
$username = "root";
$password = "root";
$dbname = "ipu_database";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
<?php

if(isset($_POST['title'])&&($_POST['link'])&&($_POST['upload_date']))
{
$title=htmlentities($_POST['title']);
$link=htmlentities($_POST['link']);
$date=htmlentities($_POST['upload_date']);
$table_name=htmlentities($_POST['tablename']);

$title=nl2br($title);

if($table_name == 'results')
{
	echo "Results Submitted";
	$sem=htmlentities($_POST['semester']);
	$sem=nl2br($sem);
	$stmt = $conn->prepare("INSERT INTO ". $table_name ." (title, semester, links, uploading_date) VALUES (?, ?, ?, ?)");
	$stmt->bind_param("ssss", $title, $sem, $link, $date);

	$stmt->execute();
	echo "Data inserted successfully";

	$stmt->close();
	$conn->close();
}


else{
$stmt = $conn->prepare("INSERT INTO ". $table_name ." (title, links, uploading_date) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $title, $link, $date);

$stmt->execute();
echo "Data inserted successfully";

$stmt->close();
$conn->close();
}
}
else{
//echo 'Please fill all the fields.';
}
?>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-76241695-1', 'auto');
  ga('send', 'pageview');

</script>

    <form action="index.php" method="POST">
      
        <h1>DATA UPDATION FORM</h1>
        
        <label for="table">Choose Destination:</label>
           <select id="table_name" name="tablename" onchange="display_hint()">
            <option value="0">--Select Table Name--</option>
		<option value="academic_affairss">Academic Affairs</option>
			<option value="admission_branch">Admission Branch</option>
			<option value="cancellation">Cancellation / Re-Admission</option>
			
            <option value="affiliation_branch">Affilation Branch</option>
            <option value="dsw_anugoonj">DSW Anugoonj</option>
            <option value="ewsdsw">DSW EWS</option>
			<option value="dsw_srijan">DSW Srijan</option>
            <option value="dsw_students">DSW Students</option>
            <option value="estates">Estates</option>
            <option value="exam_notices">Examination Notice</option>
          <!--  <option value="results">Examination Result</option>  -->
            <option value="exam_regulation">Examination Regulation</option>
            <option value="datesheet">Examination Datesheet</option>
            <option value="general_administration">General Administration</option>
            <option value="hostelsm">Hostels</option>
            <option value="industry_linkage">Industry Linkage</option>
            <option value="international_affairs">International Affairs</option>
            <option value="librarym">Library</option>
            <option value="notices_circulars">Notices/ Circulars</option>
			<option value="notice_usbas">Notices - USBAS</option>
			<option value="notice_usbt">Notices - USBT</option>
			<option value="notice_usct">Notices - USCT</option>
			<option value="notice_usict">Notices - USICT</option>
			<option value="notice_usmc">Notices - USMC</option>
			<option value="notice_usms">Notices - USMS</option>
			<option value="notice_uslls">Notices - USLLS</option>
			
			
			
			<option value="nsscell">NSS Cell</option>
            <option value="personnel_branch">Personnel Branch</option>
            <option value="phd_admission">Ph.D 2018 Admissions</option>
            <option value="placementcell">Placement Cell</option>
            <option value="planning_branch">Planning Branch</option>
			<option value="proctor_branch">Proctor Office</option>
            <option value="recruitment">Recuitment</option>
            <option value="rnc_notices_new">RNC Notices</option>
			<option value="rtilegal">RTI & Legal Branch</option>
			
            <option value="seminar">Seminar</option>
            <option value="so_regulation">Statuatory & Ordinances Regulation</option>
            <option value="so_statuatory_bodies">Statuatory Bodies</option>
            <option value="sports">Sports</option>
            <option value="statutory_ordinance">Statutory Ordinance</option>
            <option value="staff_development">Staff Development Cell</option>
			<option value="students_elections">Student Council & Welfare</option>
            <option value="tender_notice">Tenders</option>
            <option value="ucdms_notices">UCDMS Notices</option>
            <option value="uis">University Information System (UIS)</option>
			<option value="university_work_division">University Work Division</option>
          </select>
        
          <label for="title">Title:</label>
          <textarea id="title" name="title" cols="80" rows="6"></textarea>
          
		  <label for="link">Link:</label>
          <textarea id="link" name="link" cols="80" rows="2">/Pubinfo2019/</textarea>
		  
			<label>Uploading/Updation Date:</label>
		  <input type="date" value="<?php echo date('Y-m-d'); ?>" name="upload_date">
		 
        <div id="semester" style="display:none;">
		<label>Semester:</label>
		  <textarea id="sem" name="semester" cols="80" rows="3"></textarea>
        </div>
        
        <button type="submit">Submit</button>
      </form>
