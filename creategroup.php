<?php include("db/db.php");
session_start(); 
  $user_id = $_SESSION['u_id'];    
  $user_name = $_SESSION['u_name'];
$authUser=("UPDATE `tbl_users` SET `login_status`=1 WHERE `u_id`=$user_id ");
$authUser = mysqli_query($conn, $authUser);


                                         



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
  <!--  bootstrap -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <!-- Theme style -->

  <link rel="stylesheet" href="css/style.css">

<!-- select2 -->

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<!DOCTYPE html><html class=''>
<head>
<!-- <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/emilcarlsson/pen/ZOQZaV?limit=all&page=74&q=contact+" /> -->
<!-- <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'> -->

<!-- <script src="https://use.typekit.net/hoy3lrg.js"></script> -->
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
$groupName=$_POST['groupName'];

$sql= "INSERT INTO `group_chat`(`id`, `name`, `created_by`, `created_by_id`) VALUES (NULL,'$groupName','$user_name','$user_id')";
mysqli_query($conn, $sql);
 
$selectGroup="SELECT * FROM `group_chat` WHERE `name` = '$groupName' and `created_by_id` = $user_id";
$selectGroup =mysqli_query($conn, $selectGroup);

$numrow = $selectGroup->fetch_row();
$groupId = $numrow[0];
 
foreach($registeredUsers as $user){


$groupMemberAdd= "INSERT INTO `chat_member`(`id`, `g_id`, `u_id`) VALUES (Null,'$groupId','$user;')";
mysqli_query($conn, $groupMemberAdd);
 

}

echo  '<script type="text/javascript">
window.location.href = "groupchat.php?group='.$groupId.'";

</script>';

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
											
					echo	'<li class="contact" id="alluserscontent">';
					echo "<a href='conversation2.php?user=$userid'>";  
					// $_SESSION['varname']=$userid;
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
					<button id="addcontact"><i class="fa fa-user-plus fa-fw" aria-hidden="true"></i> <span>Create Group</span></button>
					<button id="settings"><i class="fa fa-cog fa-fw" aria-hidden="true"></i> <span>Settings</span></button>
				</div>
			</div>
			<div class="content">
                <div class="text-center pb-5 p-2 h4 border text-light mt-1"style="background-color:#6d849a;">CREATE GROUP</div>
							<form class="pl-5 ml-5 form-horizontal" action="" method="post" >
									<?php echo '<input name="sessionUser" type="hidden" value="$user_id">'; ?>
												<div class="form-group">
													<label class="control-label col-sm-3" for="email">Group NAME</label>
													<div class="col-12">
														<input type="text" name="groupName" class="form-control" id="groupName" >
												<?php	echo '<input type="hidden" name="creadedBy" class="form-control" id="creadedBy" value="'.$user_name.'"' ?>;
													</div>
												</div>
													
										<div class="col-12 form-group">
												<label>Group Members</label>
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
										</div>	

																					
												<div class="form-group">
													<div class="col-sm-offset-2 col-sm-10">
													<button type="submit" class="btn btn-default">Submit</button>
													</div>
												</div>
									   	
							</form>


          	  	</div>
    		</div> 
</div>
<!-- modal alert -->
<div class="modal" id="modal-secondary">
        <div class="modal-dialog">
          <div class="modal-content bg-secondary">
            <div class="modal-header">
              <h4 class="modal-title">Secondary Modal</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-outline-light">Save changes</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>

				


		
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>


<script type="text/javascript">

$(document).ready(function() {
    $('.js-example-basic-multiple').select2();
});
</script>

</body></html>

  <script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.16/js/bootstrap-multiselect.min.js" integrity="sha512-ljeReA8Eplz6P7m1hwWa+XdPmhawNmo9I0/qyZANCCFvZ845anQE+35TuZl9+velym0TKanM2DXVLxSJLLpQWw==" crossorigin="anonymous"></script>
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

