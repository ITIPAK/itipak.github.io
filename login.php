<?php
error_reporting(E_ALL & ~E_NOTICE);
	include "koneksi.php";
	$id= $_POST['id'];
	$password = $_POST['password'];
	$sid = htmlentities($id);
	$spassword = htmlentities($password);

	if (!empty($sid) and !empty($spassword))
	{
		$mpassword=md5($spassword);
		$command = "select * from mslogin where idlogin ='$sid' and password = '$mpassword'";
		$result = mysql_query($command);
	
		$row = mysql_fetch_array($result);
		
		if ($row[idlogin]==$sid And $row[password]==$mpassword)
		{
			session_start();
			$_SESSION['idlog'] = $row[idlogin];
			$_SESSION['passwordlog'] = $row[password];
		
			//session_register("idlog");
			//session_register("passwordlog");
			if ($row[idtech]=="ALL" and $row[idcompany]=="ALL")
			{
				header ("location:mscompany.php"); 
			}
			else
			{
				if ($row[idcompany]=="ALL")
				{
					header ("location:mspart.php"); 
				}
				else
				{
					header ("location:home.php"); 
				}
			}
		}
		else
		{ 
			header("location:index.php?message=1");
		}
		
	}
	else
	{
		header("location:index.php?message=2");
	}
	ob_end_flush();
?>

