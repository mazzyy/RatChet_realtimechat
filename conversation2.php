<?php include("db/db.php");
session_start(); 
  $user_id = $_SESSION['u_id'];    
 $user_name = $_SESSION['u_name'];
$authUser=("UPDATE `tbl_users` SET `login_status`=1 WHERE `u_id`=$user_id ");
$authUser = mysqli_query($conn, $authUser);
$friend=$_GET['user']; 

$friend=("SELECT * FROM `tbl_users` WHERE `u_id` = $friend ");

$friend = mysqli_query($conn, $friend);
$friend = $friend->fetch_assoc();                                          

$firendname=$friend['u_name'];
 $friId=$friend['u_id'];

?>
  <?php 

function makeImageFromName($name) {
    $userImage = "";
    $shortName = "";

    $names = explode(" ", $name);

    foreach ($names as $w) {
        $shortName .= $w[0];
        
    }

    $userImage = '<div  id="profile-img" style=" font-size: 20px;" class=" online  pt-2 name-image bg-primary">'.ucwords( $shortName).'</div>';
    return $userImage;
} 


   ?>

  <link rel="stylesheet" href="plugins/css/bootstrap.min.css">
<script src="plugins/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script> -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <!-- <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css"> -->
  <!-- Theme style -->

  <link rel="stylesheet" href="css/style.css">

<!DOCTYPE html><html class=''>
<head>
<!-- <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/emilcarlsson/pen/ZOQZaV?limit=all&page=74&q=contact+" /> -->
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'>

<script src="https://use.typekit.net/hoy3lrg.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'><link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>
</head><body>
<!-- 

A concept for a chat interface. 

Try writing a new message! :)


Follow me here:
Twitter: https://twitter.com/thatguyemil
Codepen: https://codepen.io/emilcarlsson/
Website: http://emilcarlsson.se/

-->

<div class="container-fluid">
	<div class="row">
		<div class="col-12 bg-light " >
		
			<?php  include("inc/header.php"); ?> 
		</div>
	</div>

<div class="row">
<!-- <div class="col-2">

 </div>  -->

	<div class="col-12 " style="padding-left:10%"> 
		<div id="frame"  >
			<div id="sidepanel">
				<div id="profile">
					<div class="wrap">
					<!-- $user_name -->
				<!-- <?php echo makeImageFromName($name);?> -->
						<img id="profile-img" src="http://emilcarlsson.se/assets/mikeross.png" class="online" alt="" />
						<p><?php echo $user_name;  ?></p>
						<i class="fa fa-chevron-down expand-button" aria-hidden="true"></i>
						<div id="status-options">
							<ul>
								<li id="status-online" class="active"><span class="status-circle"></span> <p>Online</p></li>
								<li id="status-away"><span class="status-circle"></span> <p>Away</p></li>
								<li id="status-busy"><span class="status-circle"></span> <p>Busy</p></li>
								<li id="status-offline"><span class="status-circle"></span> <p>Offline</p></li>
							</ul>
						</div>
						<div id="expanded">
							<label for="twitter"><i class="fa fa-facebook fa-fw" aria-hidden="true"></i></label>
							<input name="twitter" type="text" value="mikeross" />
							<label for="twitter"><i class="fa fa-twitter fa-fw" aria-hidden="true"></i></label>
							<input name="twitter" type="text" value="ross81" />
							<label for="twitter"><i class="fa fa-instagram fa-fw" aria-hidden="true"></i></label>
							<input name="twitter" type="text" value="mike.ross" />
						</div>
					</div>
				</div>
				<div id="search">
				<form action="" method="post">
					<label for=""><i class="fa fa-search" aria-hidden="true"></i></label>
					<input  type="text" id="searchuser" name="user" placeholder="Search contacts..." /> 
					</form>
				</div>
				<div id="contacts">
					<ul>
					<?php      $sql=("SELECT * FROM `tbl_users` ");
										$allUsers = mysqli_query($conn, $sql); 
							
										if ($allUsers->num_rows > 0) 
										{
											while($User = $allUsers->fetch_assoc())
											{   
												$userid=$User['u_id'];
												if(!($User['u_id']==$user_id))
											{
											
					echo	'<li class="contact">';
					echo "<a href='conversation2.php?user=$userid'>";  
					$_SESSION['varname']=$userid;
					echo		'<div class="wrap row">';
					if($User['login_status']==0){
						echo       '<i class="fa fa-circle user-status-icon user-icon-'.$userid. '"title="away"></i>';
					}
					else{
					echo       '<i class="fa fa-circle user-status-icon text-info user-icon-'.$userid. '"title="away"></i>';
					}
					// echo			'<span class="contact-status online"></span>';
					echo			makeImageFromName($User['u_name']); 
				
				
					// echo 				'<p class="preview">You just got LITT up, Mike.</p>';
				
					echo				'<p class="name pt-3 pl-2">'. $User['u_name'].'</p>';
					echo		'</div>';
					echo	'</a></li>';   
											}           
										} 
									}
					

				
						?>    
					</ul>
				</div>
				<div id="bottom-bar">
					<button id="addcontact"><i class="fa fa-user-plus fa-fw" aria-hidden="true"></i> <span>Add contact</span></button>
					<button id="settings"><i class="fa fa-cog fa-fw" aria-hidden="true"></i> <span>Settings</span></button>
				</div>
			</div>
			<div class="content">
				<div class="contact-profile">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p><?php echo $firendname ?></p>
					<div class="social-media">
						<i class="fa fa-facebook" aria-hidden="true"></i>
						<i class="fa fa-twitter" aria-hidden="true"></i>
						<i class="fa fa-instagram" aria-hidden="true"></i>
					</div>
				</div>
				<div class="messages">
					<ul id="uname_response">

					<?php 
								$msgsql=("SELECT * FROM `messages` WHERE `u_id` = '$user_id' AND `to_id`= '$friId' OR `u_id` = '$friId' AND `to_id`= '$user_id' ");  
								// echo  $msgsql; 
								$msgsql = mysqli_query($conn, $msgsql);
							
								while($old = $msgsql->fetch_assoc()){
									
									if($user_id==$old['u_id']){
								
										//  echo ' <tr ><td></td><td class="bg-info" style="text-align:right; width: 50%; border-radius: 15px 5px 15px 15px;">&nbsp;<strong style="font-size: 8px">'.$old['date'].$user_name.'</strong>&nbsp;&nbsp;<br> '.$old['msg'].'&nbsp;&nbsp;</td></tr> ';
										echo '<li class="replies"><img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /><p>'. $old['msg'] . "</p></li>";   
									}
									else{

										echo '<li class="sent"><img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /><p>'. $old['msg'] . "</p></li>";  
									}
									
								}
																	
						
						?>
						<!-- <li class="sent">
							<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
							<p>How the hell am I supposed to get a jury to believe you when I am not even sure that I do?!</p>
					    	</li>
						<li class="replies">
							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
							<p>When you're backed against the wall, break the god damn thing down.</p>
						</li>
						<li class="replies">
							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
							<p>Excuses don't win championships.</p>
						</li>
						<li class="sent">
							<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
							<p>Oh yeah, did Michael Jordan tell you that?</p>
						</li>
						<li class="replies">
							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
							<p>No, I told him that.</p>
						</li>
						<li class="replies">
							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
							<p>What are your choices when someone puts a gun to your head?</p>
						</li>
						<li class="sent">
							<img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
							<p>What are you talking about? You do what they say or they shoot you.</p>
						</li>
						<li class="replies">
							<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
							<p>Wrong. You take the gun, or you pull out a bigger one. Or, you call their bluff. Or, you do any one of a hundred and forty six other things.</p>
						</li> -->
					</ul>
				</div>
				<div class="message-input">
					<div class="wrap">
					<input type="text" placeholder="Write your message..." />  
					<i class="fa fa-paperclip attachment" data-toggle="modal" data-target="#myModal" ></i>
					<button id="send" class="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
					</div>
				</div>
				<?php   echo '<input type="hidden" name="userId" id="userId" value="'.$user_id.'">'; ?>
					<?php   echo '<input type="hidden" name="username" id="username" value="'.$user_name.'">'; ?>
					<?php   echo '<input type="hidden" name="to_user" id="to_user" value="'.$friend['u_id'].'">'; ?>
				
			</div>
		</div>
    </div> 
</div>
<!-- modal alert -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

				

<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>


<script >
$(document).ready(function(){

var conn = new WebSocket('ws://192.168.0.209:8080?token=<?php echo !empty($_SESSION['user']['token']) ? $_SESSION['user']['token'] : ''; ?>');   
conn.onopen = function(e) {
    
    console.log("Connection established!");
};

conn.onmessage = function(e) {
    console.log(e.data);
var data =JSON.parse(e.data);
var row =   ' <tr><td class="bg-success" style="text-align:left; width: 50%; border-radius: 0px 15px 15px 20px;">&nbsp;&nbsp;<strong style="font-size: 8px">'+data.from+"-"+data.date+'</strong> <br>'+data.msg+'</td><td><td></tr>';
console.log(row);

$('<li class="sent"><img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /><p>' + data.msg + '</p></li>').appendTo($('.messages ul'));
	$('.message-input input').val(null);
	$('.contact.active .preview').html('<span>You: </span>' + data.msg);
	$(".messages").scrollTop(1000);

// var row=  '<tr class="row pt-3"><div class="float-info"><div class="bg-dark" style="border-radius: 15px;  font-size: 8px;"><td><strong>'+data.from+'</strong> '+data.date+'<br></div><span class="bg-light" style="border-radius: 15px 50px 30px">'+data.msg+'</td></span></div></tr';
 $('#messages ul').append(row);
}



$(".messages").scrollTop(1000);


$("#profile-img").click(function() {
	$("#status-options").toggleClass("active");
});

$(".expand-button").click(function() {
  $("#profile").toggleClass("expanded");
	$("#contacts").toggleClass("expanded");
});

$("#status-options ul li").click(function() {
	$("#profile-img").removeClass();
	$("#status-online").removeClass("active");
	$("#status-away").removeClass("active");
	$("#status-busy").removeClass("active");
	$("#status-offline").removeClass("active");
	$(this).addClass("active");
	
	if($("#status-online").hasClass("active")) {
		$("#profile-img").addClass("online");
	} else if ($("#status-away").hasClass("active")) {
		$("#profile-img").addClass("away");
	} else if ($("#status-busy").hasClass("active")) {
		$("#profile-img").addClass("busy");
	} else if ($("#status-offline").hasClass("active")) {
		$("#profile-img").addClass("offline");
	} else {
		$("#profile-img").removeClass();
	};
	
	$("#status-options").removeClass("active");
});

function newMessage() {
	message = $(".message-input input").val();
	if($.trim(message) == '') {
		return false;
	}
	$('<li class="replies"><img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /><p>' + message + '</p></li>').appendTo($('.messages ul'));
	$('.message-input input').val(null);
	$('.contact.active .preview').html('<span>You: </span>' + message);
	$(".messages").scrollTop(1000);

};

$('.submit').click(function() {
        message = $(".message-input input").val();
    //    var msg=$("#msg").val();
       var username=$("#username").val();
       var userId=$("#userId").val();
    
   console.log(userId);
       
       var to_user=$("#to_user").val();
     console.log(to_user);

       var data = {
           from:username,
           userId:userId,
           to_user:to_user,
           msg:message,
		   date:""
       };
     
       console.log(  conn.send(JSON.stringify(data)));
   
       var row=  ' <tr ><td></td><td class="bg-info" style="text-align:right; width: 50%; border-radius: 15px 5px 15px 15px;">&nbsp;<strong style="font-size: 8px">'+data.from+'</strong>&nbsp;&nbsp;<br> '+data.msg+'&nbsp;&nbsp;</td></tr> ';
 $('#messages ul').append(row);
     


       newMessage();


});



$(window).on('keydown', function(e) {
  if (e.which == 13) {

	message = $(".message-input input").val();
    //    var msg=$("#msg").val();
       var username=$("#username").val();
       var userId=$("#userId").val();
    
   console.log(userId);
       
       var to_user=$("#to_user").val();
     console.log(to_user);

       var data = {
           from:username,
           userId:userId,
           to_user:to_user,
           msg:message,
		   date:""
       };
	
  console.log(  conn.send(JSON.stringify(data)));	
	newMessage();


    return false;
  }
});

})
//# sourceURL=pen.js
</script>


<script type="text/javascript" >

$(document).ready(function(){


// $('.submit').click(function() {

// });


$(".submit").click(function(){

     
})

});

$('#modal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})


</script>



<script>
            $(document).ready(function(){

                $("#searchuser").keyup(function(){

                    // var form_data = $(this).val().trim();
					var form_data = $(this).serialize();
			    // console.log(username);
                    if(form_data != ''){
            
                       
            
                        $.ajax({
                            url: 'validate_ajax.php',
                            type: 'post',
                            data: form_data,
                            success: function(data){
                alert(data);
                                $('#uname_response').html(data);
                                 console.log(data);
                             }
                        });
                    }
                    else {
                        //   alert("error");
                        $("#uname_response").html("not");
                    }
            
                });

            });
        </script>
</body></html>