<?php
     include("connection.php");
     
     $blood_cat=$_POST['num'];

    
     $sql="SELECT * from blood_cat where cat_id={$blood_cat}";
     $result=mysqli_query($conn,$sql) or die("Query not run".myslqi_error($conn));
     $output="";

     if(mysqli_num_rows($result)>0){
     while($row=mysqli_fetch_assoc($result)){
          $quantity=$row['quantity'];
          //echo $quantity;
          $output='<input type="text"  disabled name="available" class="form-control" value='.$quantity.'>';
     }
     echo $output;

     }else{
         echo "<h2>Record Not Found</h2>";
     }



?>