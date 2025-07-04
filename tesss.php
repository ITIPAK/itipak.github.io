<select name="employee" id="employee" onchange="getIPL(this.value);">
   <option value="">Select Employee</option>
</select>    
<?php
function getIPL(id)
    {
            $.ajax({
                       type: "GET",
                       url: "EmpLeave.php",
                       data: "emp_Id =" + id,
                       success: function(result){
                         $("#somewhere").html(result);
                       }
                     });
    };


 // Empleave.php file....
  if(isset($_GET['emp_Id'])){
     GetTotalPL($_GET['emp_Id']);
 }

 function GetTotalPL($id){
  // do your calculation...
} 

?>