<?php
session_start(); 
echo $user_id = $_SESSION['u_id'];    
echo  $user_name = $_SESSION['u_name'];

class users {
    private $id;
    private $name;
    private $email;
    private $loginStatus;
    private $lastLogin;
    public $dbConn;

    function setId($id) { $this->id = $id; }
    function getId() { return $this->id; }
    function setName($name) { $this->name = $name; }
    function getName() { return $this->name; }
    function setEmail($email) { $this->email = $email; }
    function getEmail() { return $this->email; }
    function setLoginStatus($loginStatus) { $this->loginStatus = $loginStatus; }
    function getLoginStatus() { return $this->loginStatus; }
    function setLastLogin($lastLogin) { $this->lastLogin = $lastLogin; }
    function getLastLogin() { return $this->lastLogin; }




        public function getAllUsers(){
          $sql=("SELECT * FROM `tbl_users` ");
          $allUsers = mysqli_query($conn, $sql);
                                                                  
        
                
         return $allUsers;
        }


}
?>