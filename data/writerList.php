<?php
/**根据客户端提交的页面编号，向客户端分页输出产品列表**/
header('Content-Type:application/json;charset=UTF-8');

/****接收客户端的数据****/
$pageNum=$_REQUEST['pageNum'];

/**将要向客户端输出的数据**/
$pager=['recordCount'=>0,//总记录数
       'pageSize'=>12,//页面大小
	   'pageCount'=>0,//总页数
	   'pageNum'=>intval($pageNum),//当前页面号
	   'data'=>null
];

//连接数据库
$conn=mysqli_connect('127.0.0.1','root','','ear',3306);

//SQL1 设置编号方式
$sql="set names utf8";
mysqli_query($conn,$sql);

//SQL2 获取总记录数,并计算总页数
$sql="select COUNT(*) from ear_writer";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
$pager['recordCount']=intval($row['COUNT(*)']);//把字符串解析为整数
$pager['pageCount']=ceil(($pager['recordCount'])/($pager['pageSize']));

//SQL3 获取当前指定页中的数据
$start=($pager['pageNum']-1)*$pager['pageSize'];
$count=$pager['pageSize'];
$sql="select * from ear_writer LIMIT $start,$count";
$result=mysqli_query($conn,$sql);

$pager['data']=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($pager);