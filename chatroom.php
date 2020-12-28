<?php include("db/db.php");
session_start(); 
 echo $user_id = $_SESSION['u_id'];    
echo  $user_name = $_SESSION['u_name'];
$authUser=("UPDATE `tbl_users` SET `login_status`=1 WHERE `u_id`=$user_id ");

$authUser = mysqli_query($conn, $authUser);
                                            

    

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link rel="stylesheet" href="css/style.css">
    <title>RatChet</title>
</head>
<body>
   
   <?php 

function makeImageFromName($name) {
    $userImage = "";
    $shortName = "";

    $names = explode(" ", $name);

    foreach ($names as $w) {
        $shortName .= $w[0];
    }

    $userImage = '<div class="name-image bg-primary">'.$shortName.'</div>';
    return $userImage;
} 


   ?>
   
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-3">
      
            <h5></h5>
            <ul class="list-group list-chat-item">
            <?php 
                                $sql=("SELECT * FROM `tbl_users` ");
                                $allUsers = mysqli_query($conn, $sql);
                                                                            
                                if ($allUsers->num_rows > 0) {
                                    while($User = $allUsers->fetch_assoc())
                                    {
                                       if(!($User['u_id']==$user_id))
                                       {
                                                $userid=$User['u_id'];
                                            echo   '<li class="chat-user-list">';
                                            echo  "<a href='conversation.php?user=$userid'>";
                                            echo  '<div class="chat-image">';
                                            echo             makeImageFromName($User['u_name']); 
                                                if($User['login_status']==0){
                                                        echo       '<i class="fa fa-circle user-status-icon user-icon-'.$userid. '"title="away"></i>';
                                                    }
                                                    else{
                                                      echo       '<i class="fa fa-circle user-status-icon text-info user-icon-'.$userid. '"title="away"></i>';
                                                    }

                                            echo  '</div>';
                
                                            echo '<div class="chat-name font-weight-bold">';
                                                
                                            echo '</div>';
                                            echo $User['u_name'];
                                            echo '</a>';
                                            echo '</li>';
                                         
                                    }
                                     }
                                }  
                          
                      ?>
                </ul>          
        </div>
        <div class="col-md-9">
            <h1>
                Message Section
            </h1>

            <p class="lead">
                Select user from the list to begin conversation.
            </p> 
        </div>
    </div>
</div>
</body>
</html>