<?php

class buyer_login extends connection{
    public $username;
    public $password;

    public function __construct($username, $password){
        $this->username = $username;
        $this->password = $password;
    }

    public function login_buyer(){
        $conn = $this->con();
        $stmt = "SELECT * FROM `buyer` WHERE email ='$this->username' AND password = '$this->password'";
        $result = $conn->prepare($stmt);
        $result->execute();
        $user = $result->fetch();
        $total = $result->rowCount();
        
        if($total == 1){
            sleep(3);   
            $this->set_User($user);
            echo "<script>window.location.href = '../index.php';</script>";

            return true;
        }else{
            return false;
        }
    }
    public function set_User($array){
      
        session_start();
        if(!isset($_SESSION)){
        $_SESSION['buyer1'] = array(
            "fullname" => $array["first_name"]." ".$array["last_name"],
            "access"=> $array["Buyer"]);
            
        }

        return $_SESSION['buyer1'];
    }
}

?>
