<?php
/**���ݿͻ����ύ��ҳ���ţ���ͻ��˷�ҳ�����Ʒ�б�**/
header('Content-Type:application/json;charset=UTF-8');

/****���տͻ��˵�����****/
$pageNum=$_REQUEST['pageNum'];

/**��Ҫ��ͻ������������**/
$pager=['recordCount'=>0,//�ܼ�¼��
       'pageSize'=>12,//ҳ���С
	   'pageCount'=>0,//��ҳ��
	   'pageNum'=>intval($pageNum),//��ǰҳ���
	   'data'=>null
];

//�������ݿ�
$conn=mysqli_connect('127.0.0.1','root','','ear',3306);

//SQL1 ���ñ�ŷ�ʽ
$sql="set names utf8";
mysqli_query($conn,$sql);

//SQL2 ��ȡ�ܼ�¼��,��������ҳ��
$sql="select COUNT(*) from ear_writer";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
$pager['recordCount']=intval($row['COUNT(*)']);//���ַ�������Ϊ����
$pager['pageCount']=ceil(($pager['recordCount'])/($pager['pageSize']));

//SQL3 ��ȡ��ǰָ��ҳ�е�����
$start=($pager['pageNum']-1)*$pager['pageSize'];
$count=$pager['pageSize'];
$sql="select * from ear_writer LIMIT $start,$count";
$result=mysqli_query($conn,$sql);

$pager['data']=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($pager);