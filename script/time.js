var var_Weeks = ["Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"];

function SetShowTime(){
    if(!document.layers && !document.all && !document.getElementById){
        return;
    }

    var var_Date = new Date();
    var var_Hour = var_Date.getHours();
    var var_Minute = var_Date.getMinutes();
    var var_Second = var_Date.getSeconds();
    var var_Week = var_Weeks[var_Date.getDay()];

    var var_Mode = "AM";

    if(var_Hour > 12){
        var_Mode = "PM";

        var_Hour = var_Hour - 12;
    }

    if(var_Hour == 0){ var_Hour = 12; }

    if(var_Minute <= 9){ var_Minute = "0" + var_Minute; }

    if(var_Second <= 9){ var_Second = "0" + var_Second; }

    var_Clock = '<label class="gLTime">' + var_Hour + ":" + var_Minute + ":" + var_Second + " " + var_Mode + '</label>';

    if(document.layers){
        document.layers.div_time.document.write(var_Clock);
        document.layers.div_time.document.close();
    }else if(document.all){
        div_time.innerHTML = var_Clock;
    }else if(document.getElementById){
        document.getElementById("div_time").innerHTML = var_Clock;
    }

    setTimeout("SetShowTime()", 1000);
}