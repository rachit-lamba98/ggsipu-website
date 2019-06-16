<?php 
	session_start();
	include "../../credential.conf";
   	try{
	if(!isset($_SESSION["uid"])){
    	$_SESSION['uid']=123;
	$sql = "UPDATE hitcounter "."SET hitcount = hitcount+1";
	$retval = mysqli_query( $conn,$sql );
	}
	$sql = "SELECT hitcount FROM hitcounter LIMIT 1";
	$retval = mysqli_query( $conn , $sql );
	$row = mysqli_fetch_assoc($retval);
    	print "{$row['hitcount']} ";
	mysqli_close($conn);
        }
	catch(Exception $e)
	{
	}
  ?>