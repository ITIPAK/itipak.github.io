function showObjek(id)
{
	var obj=document.getElementById(id);
	obj.style.display="block";
}

function hideObjek(id)
{
	var obj=document.getElementById(id);
	obj.style.display="none";
}
function replace(sumber_data,id) {
	var http = false;
	if(navigator.appName == "Microsoft Internet Explorer") {
		http = new ActiveXObject("Microsoft.XMLHTTP");
	} else {
		http = new XMLHttpRequest();
	} 
	http.open("GET", sumber_data, true);
	http.onreadystatechange=function() {
		if(http.readyState == 4) {
			document.getElementById(id).innerHTML = http.responseText;
		}
	}
	http.send(null);
}

function goLastMonth(month, year)
{
// If the month is January, decrement the year
if(month == 1)
{
--year;
month = 13;
}
month = month-1;
if(month<10) month2='0'+month;
else month2=month;
//document.location.href = '?month='+month2+'&year='+year;
//replace('calendar/cal.php?month='+(month-1)+'&year='+year,'agendacontent');
replace('../prodi/agenda.php?month='+month2+'&year='+year,'agenda');
} 

function goNextMonth(month, year)
{
// If the month is December, increment the year
if(month == 12)
{
++year;
month = 0;
}
month = month+1;
if(month<10) month2='0'+month;
else month2=month;
//document.location.href = '?month='+month2+'&year='+year;
//replace('calendar/cal.php?month='+(month+1)+'&year='+year,'agendacontent');
replace('../prodi/agenda.php?month='+month2+'&year='+year,'agenda');
} 