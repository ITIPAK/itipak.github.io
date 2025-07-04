<link href="index_files/bootstrap.css" rel="stylesheet" media="screen">
<link href="index_files/style.css" rel="stylesheet">
<script type="text/javascript" src="index_files/jquery.js"></script>
<script type="text/javascript" src="index_files/bootstrap.js"></script>
<script src="index_files/jquery_002.js"></script>
<script type="text/javascript" src="index_files/script.js"></script>	

			<?php
			error_reporting(E_ALL & ~E_NOTICE);
				if ($hsyncron[idcompany]=='ALL')
				{
					$image = "images/vip.jpg";
					if ($hsyncron[idtech]=='ALL')
					{
						$nama = "$hsyncron[nama]";
					}
					else
					{
						$seltech1 = "select * from mstech where idtech = '$hsyncron[idtech]'";
						$qseltech1 = mysql_query($seltech1);
						$hseltech1 = mysql_fetch_array($qseltech1);
						$nama = "$hsyncron[nama] - $hseltech1[tech]";
					}
					$alias = "VIP Group";
				}
				else
				{
					$syncompany = "select * from mscompany where idcompany = '$hsyncron[idcompany]'";
					$qsyncompany = mysql_query($syncompany);
					$hsyncompany = mysql_fetch_array($qsyncompany);
					$image = "images/".$hsyncompany[logo];
					$nama = $hsyncompany[company];
					$alias = $hsyncompany[alias];
				}
			?>

				
				

	
			<tr align="center">
				<td>
				<div align="right"><font face="arial" size="1" color="#0000FF">Welcome <?php echo "$nama"; ?>  <br><br>
				| <a href="logout.php">Log out</a> |</font><br><br>
			<font face="arial" size="1">
			
			<?php
			$wrn = "select * from trwr where status = 'O'";
			$wrp = "select * from trwr where status = 'P'";
			
			$qwrn = mysql_query($wrn);
			$qwrp = mysql_query($wrp);
			
			$nwrn = mysql_num_rows($qwrn);
			$nwrp = mysql_num_rows($qwrp);
			if ($hsyncron[idcompany]=='ALL')
			{
				if ($nwrn<>0)
				{
					echo "New WR : <a href='requesth.php'>".$nwrn." Jobs</a><br>";
				}
				else
				{
				
				}
				
				if ($nwrp<>0)
				{
					echo "Unclose WR : <a href='requestp.php'>".$nwrp." Jobs</a><br>";
				}
				else
				{
				}
			}
			else
			{
			
			}
			?>
			</font></div>
				<center><font face="arial" size="2" color="#FF0000">
				<?php
					if ($hsyncron[idcompany]<>'ALL' and $hsyncompany[active]=='N')
					{
						echo "Maaf Perusahaan ini sedang tidak Aktif!!";
					}
					else
					{
						
					}
				?>
				</font></center>

				<img src="<?php echo "$image"; ?>" width="780"><br>
				</td>
			</tr>
			</table>
	<table align="center" width="800">
		<tr>
			<td>
					
	<center>
	<div align="center" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
	
		<?php
		if ($hsyncron[idcompany]=='ALL' and $hsyncron[idtech]=='ALL')
		{
		?>		
      	<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Data Master<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <!--<li><a href="pesananbelumlunas.php">Bayar Barang Saja</a></li>
                <li class="divider">test</li>-->
                <li><a href="mscompany.php" class="green-text">Company's Data</a></li>
                <li><a href="msdivisi.php" class="green-text">Division's Data</a></li>
				<li><a href="mstech.php" class="green-text">Technical's Data</a></li>
				<li><a href="mslogin.php" class="green-text">Login's Data</a></li>
            	<li> <a href="mspart.php">Sparepart's Data</a> </li>
				<li> <a href="mscpu.php">CPU' Data</a> </li>
				<li> <a href="sqlin.php">Repair Database</a> </li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Transaksi Data <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li> <a href="request.php">Request Works</a> </li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Laporan <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li> <a href="schedule.php">Schedule</a> </li>
			</ul>
        </li>		
	<?php
						}
						else if ($hsyncron[idcompany]=='ALL')
						{
						?>
						
		      	<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Master Data <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <!--<li><a href="pesananbelumlunas.php">Bayar Barang Saja</a></li>
                <li class="divider">test</li>-->
				<li><a href="mspart.php" class="green-text">Sparepart List</a></li>
				<li> <a href="mscpu.php">CPU' Data</a> </li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Transaksi Data <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li><a href="requesth.php" class="green-text">WR Baru</a></li>
				<li><a href="requestp.php" class="green-text">WR Proses</a></li>
				<li><a href="requestc.php" class="green-text">WR Close</a></li>
		        <li><a href="opname.php" class="green-text">Sparepart Opname</a></li>
				<li> <a href="rr.php">Data RR</a> </li>
				<li> <a href="pr.php">Data PR</a> </li>
				<li> <a href="gp.php">Data GP</a> </li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Laporan <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li> <a href="schedule.php">Schedule</a> </li>
			</ul>
        </li>	   	

	<?php
	}
	else
	{
	?>
		<?php
		if ($hsyncompany[active]=='Y')
		{
		?>
     	<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Master Data <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <!--<li><a href="pesananbelumlunas.php">Bayar Barang Saja</a></li>
                <li class="divider">test</li>-->
				<li> <a href="home.php">Company Proile</a> </li>
				<li> <a href="divisi.php">Divisi</a> </li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Transaksi Data <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li> <a href="wr.php">Work Request</a> </li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Laporan <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li> <a href="schedule.php">Schedule</a> </li>
			</ul>
        </li>	
		<?php
		}
		else
		{
		?>
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Master Data <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <!--<li><a href="pesananbelumlunas.php">Bayar Barang Saja</a></li>
                <li class="divider">test</li>-->
				<li> Company Proile </li>
				<li> Divisi</li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Transaksi Data <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li> Work Request </li>
			</ul>
        </li>
		
		<li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Laporan <b class="caret"></b></a>
            <ul class="dropdown-menu">
            	<li> Schedule</li>
			</ul>
        </li>
		<?php
		}
	  	?>
		
		
	  
	<?php
	}


	?>				
			  </ul>
	</div>	
	</center>
						
						</td>
		</tr>
	
				