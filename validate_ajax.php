<?php 
function makeImageFromName($name) {
    $userImage = "";
    $shortName = "";

    $names = explode(" ", $name);

    foreach ($names as $w) {
        $shortName .= $w[0];
        
    }

    $userImage = '<div  id="profile-img" style=" font-size: 20px;" class=" online  pt-2 name-image bg-primary"  >'.ucwords( $shortName).'</div>';
    return $userImage;
} 
?>

<?php

include("db/db.php");

if(!empty($_POST["user"])){

    $username = $_POST["user"];
      $query = "select * from tbl_users where u_name LIKE '".$username."%'";
  
    $result = mysqli_query($conn,$query);
 $response ="";
 while($row = mysqli_fetch_array($result))
{
        

      $response='<li class="contact" id="alluserscontent"><a href="conversation2.php?user='.$row['u_id'].'"><div class="wrap row"><i class="fa fa-circle user-status-icon user-icon-1" title="away"></i>'.makeImageFromName($row['u_name']).'<p class="name pt-3 pl-2 text-primary">'. $row['u_name'].'</p>';
         
      
}

    // if(mysqli_num_rows($result)){
  
    // }  //     $row = mysqli_fetch_array($result);
    
    //     $count = $row['cntUser'];
        
    //     if($count > 0){
    //         $response = "<span style='color: red;'>Not Available.</span>";
    //     }
       
    
    echo $response;
    
}
?>