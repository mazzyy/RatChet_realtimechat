<?php include("db/db.php");
session_start(); 
 echo $user_id = $_SESSION['u_id'];    
echo  $user_name = $_SESSION['u_name'];
$authUser=("UPDATE `tbl_users` SET `login_status`=1 WHERE `u_id`=$user_id ");
$authUser = mysqli_query($conn, $authUser);
$friend=$_GET['user']; 

$friend=("SELECT * FROM `tbl_users` WHERE `u_id` = $friend ");

$friend = mysqli_query($conn, $friend);
$friend = $friend->fetch_assoc();                                          

echo $friend['u_name'];



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    

<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

    
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

        <div class="col-md-9 chat-section border">
            <div class="chat-header border">
                <div class="chat-image">
                
                    <?php echo makeImageFromName($friend['u_name']) ?>
                </div>

                <div class="chat-name font-weight-bold">
                    <?php echo $friend['u_name']; 
               ?>
                </div>
            </div>

            <div class="chat-body" id="chatBody">
                <div class="message-listing" id="messageWrapper">

                </div>
            </div>

            <div class="chat-box">
            <form action=""> 
            
                <div class="row" id="chatInput" contenteditable="">
         
                    <form id="chat-room-frm" method="post" action="">
					<div class="form-group">
                    	<textarea class="form-control" id="msg" name="msg" placeholder="Enter Message"></textarea>
	                </div>
	                <div class="form-group">
	                    <input type="button" value="Send" class="btn btn-success btn-block" id="send" name="send">
	                </div> 
                    <?php   echo '<input type="hidden" name="userId"  id="userId" value="'.$user_id.'">'; ?>
                   <?php   echo '<input type="hidden" name="username" id="username" value="'.$user_name.'">'; ?>
                   <?php   echo '<input type="hidden" name="to_user"  id="to_user" value="'.$friend['u_id'].'">'; ?>
                   
			    </form>

                    
                <!-- <div class="chat-input-toolbar">
                    <button title="Add File" class="btn btn-light btn-sm btn-file-upload">
                        <i class="fa fa-paperclip"></i>
                    </button> |

                    <button title="Bold" class="btn btn-light btn-sm tool-items"
                            onclick="document.execCommand('bold', false, '');">
                        <i class="fa fa-bold tool-icon"></i>
                    </button>

                    <button title="Italic" class="btn btn-light btn-sm tool-items"
                            onclick="document.execCommand('italic', false, '');">
                        <i class="fa fa-italic tool-icon"></i>
                    </button>
                </div>
                <div> -->
                   
                     
                 
                </div>
            </div>
        </div>
    </div>
    </body>
<script type="text/javascript" >

$(document).ready(function(){

    var conn = new WebSocket('ws://localhost:8080');
conn.onopen = function(e) {
    console.log("Connection established!");
};

conn.onmessage = function(e) {
    console.log(e.data);
}


$("#send").click(function(){
       var msg=$("#msg").val();
       var userId=$("#userId").val();
       var data = {
           userId:userId,
           msg:msg
       };
       conn.send(JSON.stringify(data));

})

});
</script>
</html>
