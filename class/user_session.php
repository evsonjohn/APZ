<?php

    class user_session {
        public function get_User(){
            if(!isset($_SESSION)){
                session_start();
            }
            return $_SESSION['buyer1'];
        }
    

    public function logout(){
        if(!isset($_SESSION)){
            session_start();
        }
        $_SESSION['buyer1'] = null;
        unset($_SESSION['buyer1']);
    }
}
?>