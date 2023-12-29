<?php
require_once 'connection.php';
class buyer_registration extends connection{
    public $conn;
    public $Fname;
    public $Lname;
    public $Bday;
    public $age;
    public $email;
    public $number;
    public $password1;
    public $gender;

    public function __construct($Fname,$Lname,$Bday,$age,$email,$number,$password1,$gender){//construct
        $this->Fname = $Fname;
        $this->Lname = $Lname;
        $this->Bday = $Bday;
        $this->age = $age;
        $this->email = $email;
        $this->number = $number;
        $this->password1 = $password1;
        $this->gender = $gender;
    }
   public function Registration(){//insert data in table buyer for registration

        $conn =  $this->con();
        $stmt = "INSERT INTO `buyer`(`first_name`, `last_name`, `email`, `password`, `gender`, `age`, `birthday`) 
        VALUES ('$this->Fname','$this->Lname','$this->email','$this->password1','$this->gender','$this->age','$this->Bday')";
        $result = $conn->prepare( $stmt );

        if(!$result->execute()){
            echo "failed insert data!";
        }
        return true;
    }

    function checkEmail($email){
        $con = $this->con();
        $stmt = "SELECT * FROM `buyer` WHERE `email` = '$this->email' ";
        $result = $con->prepare($stmt);
        $result->execute();
        $total = $result->rowCount();

        return $total;

    }


}

?>