<?php include("db/db.php");
session_start(); 
  $user_id = $_SESSION['u_id'];    
 $user_name = $_SESSION['u_name'];
$authUser=("UPDATE `tbl_users` SET `login_status`=1 WHERE `u_id`=$user_id ");
$authUser = mysqli_query($conn, $authUser);
$groupIdCurrent=$_GET['group'];
// $msgsql=("SELECT * FROM `group_messages` INNER JOIN group_chat ON group_messages.g_id = group_chat.id WHERE `g_id`= $groupIdCurrent=");
$friend=("SELECT * FROM `group_chat` WHERE `id`= $groupIdCurrent ");


$friends = mysqli_query($conn, $friend);

$friend = $friends->fetch_assoc();                                          

$firendname=$friend['name'];
 $friId=$friend['id'];

?>
  <?php 

function makeImageFromName($name) {
    $userImage = "";
    $shortName = "";

    $names = explode(" ", $name);

    foreach ($names as $w) {
        $shortName .= $w[0];
        
    }

    $userImage = '<div  id="profile-img" style=" font-size: 20px;" class=" online  pt-2 name-image bg-info">'.ucwords( $shortName).'</div>';
    return $userImage;
} 


   ?>

<!-- bootstrap -->

 <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link rel="stylesheet" href="plugins/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->

  <!-- Theme style -->

  <link rel="stylesheet" href="css/style.css">

<!DOCTYPE html><html class=''>
<head>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script>try{Typekit.load({ async: true });}catch(e){}</script>
	
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'><link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>
</head>
<style>
.select2-selection__choice{
background-color:#007bff !important;
border: 1px solid #007bff !important;

};

#select2-selection{

padding:30% !important;

} 
</style>
<body>

<?php

if(isset($_POST['states'])){
		$registeredUsers=$_POST['states'];
		// echo $registeredUsers;
	

		
		$selectGroup="SELECT * FROM `group_chat` WHERE `created_by_id` = $user_id";
		$selectGroup =mysqli_query($conn, $selectGroup);
		
		$numrow = $selectGroup->fetch_row();
		$groupId = $numrow[0];
		
		foreach($registeredUsers as $user){
		
		
		$groupMemberAdd= "INSERT INTO `chat_member`(`id`, `g_id`, `u_id`) VALUES (Null,'$groupId','$user;')";
		mysqli_query($conn, $groupMemberAdd);
		
		}
}
?>
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
					<div class="bg-light pl-4 w-100" id="searchusersbox" >  </div>
				</div>
				<span class="row text-light">
					<div class="col-6 text-center p-2 bg-dark"> 
						<a class="text-light" href="index.php"> <i class="fas fa-user"></i> Users</a> 
					</div>
					<div class="col-6 text-center p-2 bg-dark"> 
						<a  class=" text-light"  href=""> <i class="fas fa-users"></i> Group
					</div>
					</a> 
				</span>
				<div id="contacts">

					<ul>
					<?php      $sql=("SELECT * FROM `group_chat` ");
										$allUsers = mysqli_query($conn, $sql); 
							
										if ($allUsers->num_rows > 0) 
										{
											while($group = $allUsers->fetch_assoc())
											{   
												$groupId=$group['id'];
											
											
					echo	'<li class="contact" id="alluserscontent">';
					echo "<a href='groupchat.php?group=$groupId'>";  
					// $_SESSION['varname']=$userid;
					echo		'<div class="wrap row">';
				
				
					// echo			'<span class="contact-status online"></span>';
					echo			makeImageFromName($group['name']); 
				
				
					// echo 				'<p class="preview">You just got LITT up, Mike.</p>';
				
					echo				'<p class="name pt-3 pl-2">'. $group['name'].'</p>';
					echo		'</div>';
					echo	'</a></li>';   
											          
										} 
									}
					

				
						?>    
					</ul>
				</div>
				<div id="bottom-bar">
					<a href="creategroup.php" id="addcontact" class="btn text-light" ><i class="fa fa-user-plus fa-fw" aria-hidden="true"></i> <span>Create Group</span> </a>
					<!-- <button  id="addcontact"><i class="fa fa-user-plus fa-fw" aria-hidden="true"></i> </button> -->
					<button id="settings"><i class="fa fa-cog fa-fw" aria-hidden="true"></i> <span>Settings</span></button>
				</div>
			</div>
			<div class="content">
				<div class="contact-profile">
					<img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
					<p><?php echo $firendname ?></p>
					<div class="social-media">
						<!-- <i class="fa fa-facebook" aria-hidden="true"></i>
						<i class="fa fa-twitter" aria-hidden="true"></i>
						<i class="fa fa-instagram" aria-hidden="true"></i> -->
						<button type="button" class=" p-0 m-0  btn btn-link btn-lg" data-toggle="modal" data-target="#myModal"><i class=" text-dark p-0 m-0 fas fa-users-cog"></i></button>

					</div>
				</div>
				<div class="messages">
					<ul id="uname_response">

                    <?php  
                             $msgsql=("SELECT * FROM `group_messages` INNER JOIN group_chat ON group_messages.g_id = group_chat.id WHERE `g_id`= $groupIdCurrent");
								
								
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
							
								<div class="file btn btn-lg btn-light " style="width:2%;   position: relative;overflow: hidden;">
											<i  class="fa fa-paperclip text-dark pr-5"></i> 
											<input  type="file" name="file"  id="fileatth" style="position: absolute; opacity: 0;right: 0;top: 0; width:5%" />
								</div>
					
						
									<button id="send" class="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
							</div>
						</div>
						<?php   echo '<input type="hidden" name="userId" id="userId" value="'.$user_id.'">'; ?>
							<?php   echo '<input type="hidden" name="username" id="username" value="'.$user_name.'">'; ?>
							<?php   echo '<input type="hidden" name="to_user" id="to_user" value="'.$friend['id'].'">'; ?>
				
				</div>
		</div>
    </div> 
</div>
<!-- modal alert -->
<div id="myModal" class="modal fade" role="dialog">
   <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
       <?php echo '<h3 class="modal-title" id="exampleModalLabel">'.$firendname.'</h3>'; ?>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">


<div class="container">
  
  <ul class="nav nav-tabs ">
    <li class="active 	border-right "><a data-toggle="tab" href="#home">PARTICIPANTS</a></li>
    <li><a class="pl-3 	border-right " data-toggle="tab" href="#menu1">ADD USER</a></li>
    <li><a class="pl-3  border-right " data-toggle="tab" href="#menu2">Menu 2</a></li>
    <li><a class="pl-3  border-right " data-toggle="tab" href="#menu3">Menu 3</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
	<h3>-------------------</h3>
	  <?php      $sql=("SELECT * FROM `chat_member` INNER JOIN tbl_users ON chat_member.u_id=tbl_users.u_id WHERE `g_id`= $groupIdCurrent ");
										$allUsers = mysqli_query($conn, $sql); 
							
										if ($allUsers->num_rows > 0) 
										{
											while($User = $allUsers->fetch_assoc())
											{   
												$userid=$User['u_id'];
												if(!($User['u_id']==$user_id))
											{
					
							echo   '<div class="wrap row border-bottom p-1"  >';					
							echo	   	  '<li class="contact" id="alluserscontent" style="list-style-type: none;">';
							echo				'<div class="wrap row  p-1">';
							echo 				'<button style="" class="btn btn-link text-danger btn-sm"><i class="fas fa-user-slash"></i></button>';
						    echo       			 '<i class="  user-status-icon user-icon-'.$userid. '"title="away" style="list-style-type: none;"></i>';
							echo				 '<a class=" pl-2 " href="conversation2.php?user='.$userid.'">'.makeImageFromName($User['u_name']).'</a>'; 
							echo		    	 '<p class="name pt-3 pl-2" >'. $User['u_name'].'</p>';
		
							echo     	  '</li>';
							echo   '</div>';
							
                     
											}           
										} 
									}
					

				
						?>    
    </div>

    <div id="menu1" class="tab-pane fade">
      
	  <form class="pl-1 ml-1 form-horizontal" action="" method="post" >
								
													
										<div class="form-group pt-3">
												<label>Add Users</label>
													<select  class=" js-example-basic-multiple" name="states[]" class="select2" multiple="multiple" data-placeholder="Select a State" style="width: 100%; padding:20%;">
															<?php      $sql=("SELECT * FROM `tbl_users` ");
																		$allUsers = mysqli_query($conn, $sql); 
															
																		if ($allUsers->num_rows > 0) 
																		{
																			while($User = $allUsers->fetch_assoc())
																			{   
																				$userid=$User['u_id'];
																				if(!($User['u_id']==$user_id))
																		{
																			$id=$User['u_id'];
																		//    echo  '<option > <li class="contact" id="alluserscontent"><a href="conversation2.php?user='.$row['u_id'].'"><div class="wrap row"><i class="fa fa-circle user-status-icon user-icon-1" title="away"></i>'.makeImageFromName($row['u_name']).'<p class="name pt-3 pl-2 text-primary">'. $row['u_name'].'</p>
																			echo   '<option value="'.$id .'" class="pt-1  text-light border" > '.$User['u_name'].'</option>';
																		}           
																		} 
																	}
													

												
																?>
													</select>
												<?php	echo '<input type="hidden" name="group" value="'.$groupIdCurrent.'"'; ?>
												
										</div>	

																					
												<div class="form-group">
													<div class="col-sm-offset-2 ">
													<button type="submit" class="btn btn-default">Submit</button>
													</div>
												</div>
									   	
							</form>
    </div>

    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>

    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
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
		//file
		file = $("#fileatth").val();
		// file = $("#fileatth").prop('files')[0];
		// var file =JSON.parse(file);
		console.log(file);
    //    var msg=$("#msg").val();
       var username=$("#username").val();
       var userId=$("#userId").val();
    
   console.log(userId);
       
       var to_group=$("#to_user").val();
     console.log(to_user);

       var data = {
           from:username,
           userId:userId,
           to_group:to_group,
           to_user:"",
           msg:message,
		   date:"",
		   file:file
		  
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
       
       var to_group=$("#to_user").val();
     console.log(to_user);

       var data = {
           from:username,
           userId:userId,
           to_group:to_group,
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

<script type="text/javascript">

$(document).ready(function() {
    $('.js-example-basic-multiple').select2();
});
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
                // alert(data);
                                $('#searchusersbox').html(data);
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
<script>
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
</script>
  <script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="plugins/js/bootstrap.min.js"></script>

<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->