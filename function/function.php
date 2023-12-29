<?php
function B_register()//registration
{
    if (isset($_POST["submit"])) {
        $BuyerRegistration = new buyer_registration($_POST['Fname'], $_POST['Lname'], $_POST['Bday'], $_POST['age'], $_POST['email'], $_POST['number'], $_POST['password1'], $_POST['gender']);
        
        if($BuyerRegistration->checkEmail($_POST['email'])== 0 ){//check email if you are have same email
            if ($BuyerRegistration->Registration()) {
                echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
                        <strong>Registration successful. Your data has been inserted.</strong>
                        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close' onclick='redirectToLogin()'></button>
                      </div>";
            } else {
                echo "Error: Registration failed.";
            }
        }else{
            echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
            <strong>The email already Registered</strong>
            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
          </div>";
        }

    }
 
}


function login(){
    if(isset($_POST["login"])) {
        $user_login = new buyer_login($_POST["username"], $_POST["password"]);
        if($user_login->login_buyer()){
            echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
                <strong>Registration successful. Your data has been inserted.</strong>
                <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close' onclick='redirectToLogin()'></button>
              </div>";
             
        }else{
            echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
                <strong>Wrong email or password </strong>
                <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
              </div>";
        }
    }
}




?>

<script>// when you register you will go to login form
function redirectToLogin() {
    window.location.href = 'login.php';
}
</script>
