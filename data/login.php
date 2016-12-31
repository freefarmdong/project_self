<?php
header('Content-Type:text/plain;charset=UTF-8');
$uname=$_REQUEST['uname'];
$upwd=$_REQUEST['upwd'];
$conn=mysqli_connect('127.0.0.1','root','','ear',3306);
$sql="set names utf8";
mysqli_query($conn,$sql);
$sql="select *from ear_user where uname='$uname' AND upwd='$upwd'";
$result=mysqli_query($conn,$sql);
if($result===false){
  echo 'sqlerr';
}else{
  $row = mysqli_fetch_assoc($result);
  if($row){	//抓取到一行记录
	echo 'ok';
  }else {		//没有抓取到任一行记录
	echo 'err';
  }
}
