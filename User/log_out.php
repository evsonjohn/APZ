<?php
session_start();

// Set session variable
$_SESSION['test'] =array( 'Hello, World!'=>'name');

// Retrieve and print session variable
print_r ($_SESSION['test']);
?>