<?php

include "koneksi.php";

session_start();

if(isset($_POST['login'])){

$username =
$_POST['username'];

$password =
$_POST['password'];

$query =
mysqli_query(

$conn,

"SELECT * FROM admin

WHERE username='$username'

AND password='$password'"

);

if(mysqli_num_rows($query)){

$_SESSION['admin']=true;

header("Location: dashboard.php");

}

else{

echo "Login gagal";

}

}

?>

<form method="POST">

<h2>Login Admin</h2>

<input
type="text"
name="username"
placeholder="Username">

<input
type="password"
name="password"
placeholder="Password">

<button name="login">

Login

</button>

</form>
