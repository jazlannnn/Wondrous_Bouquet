<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';

$fname = $_POST["fname"];
$lname = $_POST["lname"];
$address = $_POST["address"];
$city = $_POST["city"];
$email = $_POST["email"];
$pwd = $_POST["pwd"];


if($fname!=""){
  $result = $mysqli->query('UPDATE customers SET fname ="'. $fname .'" WHERE id ='.$_SESSION['id']);
  if($result){
  }
}

if($lname!=""){
  $result = $mysqli->query('UPDATE  customers SET lname ="'. $lname .'" WHERE id ='.$_SESSION['id']);
  if($result){
  }
}

if($address!=""){
  $result = $mysqli->query('UPDATE customers SET address ="'. $address .'" WHERE id ='.$_SESSION['id']);
  if($result){
  }
}

if($city!=""){
  $result = $mysqli->query('UPDATE  customers SET city ="'. $city .'" WHERE id ='.$_SESSION['id']);
  if($result){
  }
}

if($email!=""){
  $result = $mysqli->query('UPDATE  customers SET email ="'. $email .'" WHERE id ='.$_SESSION['id']);
  if($result) {
  }
}

//$result = $mysqli->query('Select password from users WHERE id ='.$_SESSION['id']);

//$obj = $result->fetch_object();

if(/*$opwd === $obj->password &&*/ $pwd!=""){
  $query = $mysqli->query('UPDATE  customers SET password ="'. $pwd .'" WHERE id ='.$_SESSION['id']);
  if($query){
  }
}

//else {
//  echo 'Wrong Password. Please try again. <a href="account.php">Go Back</a>';
//}

header("location:success.php");


?>
