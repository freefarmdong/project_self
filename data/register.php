<?php
header('Content-Type:application/json;charset=UTF-8');
$uname=$_REQUEST['uname'];
$upwd=$_REQUEST['upwd'];
$email=$_REQUEST['email'];
/*连接数据库*/
$conn=mysqli_connect('127.0.0.1','root','','ear',3306);
$sql="set names utf8";
mysqli_query($conn,$sql);
$sql="insert into ear_user values(null,'$uname','$upwd','$email')";
$result=mysqli_query($conn,$sql);
$output=[];
if($result){
  $output['msg']='succ';
  $output['uid']=mysqli_insert_id($conn);
}else{
 $output['msg']='err';
 $output['sql']='sql';
}
echo json_encode($output);

