<?php

include("db/db.php");

if(!empty($_POST["user"])){

    $username = $_POST["user"];
      $query = "select u_name from tbl_users where u_name LIKE '".$username."%'";
  
    $result = mysqli_query($conn,$query);
 $response ="";
 while($row = mysqli_fetch_array($result))
                                {
                                  

    $response .= "<span style='color:red;'>".$row['0']." <b>Already</b> exist</span>";

}

    // if(mysqli_num_rows($result)){
    //     $row = mysqli_fetch_array($result);
    
    //     $count = $row['cntUser'];
        
    //     if($count > 0){
    //         $response = "<span style='color: red;'>Not Available.</span>";
    //     }
       
    // }
    
    echo $response;
    
}
?>