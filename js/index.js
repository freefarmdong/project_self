/**
 * Created by bjwsl-001 on 2016/11/3.
 */
/**2.点击登录按钮，异步验证登录信息**/
$('#bt-login').click(function(){
  var inputData=$('#login-form').serialize();
  //console.log('开始处理响应消息');
  $.ajax({
    type:'POST',
    url:'data/login.php',
    data:inputData,
    success:function(txt,msg,xhr){
      if(txt==='ok'){
        $('.modal').fadeOut(300);
        //var loginName=$('[name="uname"]').val();
        //sessionStorage['loginName']=loginName;
        //$('#welcome').html('欢迎回来：'+loginName);
        //$('#bt-Login').css('display','none');
      }else{
        $('.modal .alert').html('登录失败,错误消息为'+txt);
      }
    }

  });
});

/**功能.为document添加滚动事件监听:**/
document.addEventListener("scroll",
  function(){
    //查找boll的a
    var a=document.getElementById("boll");
    //设置a的display为:
    //滚动过的距离>=500?block:none
    a.style.display=
      document.body.scrollTop>=500?
        "block":"none";
  }
);


/**页面加载完成后，异步请求推送信息，展示在页面主体**/

$(function(){
  loadProductByPage(1);

});
$('.pager').on('click','a',function(event){
  event.preventDefault();
  var pageNum=$(this).attr('href');
  loadProductByPage(pageNum);
});
/**点击分页条中的页号，实现分页加载**/
function loadProductByPage(pageNum){
  $.ajax({
    type:'GET',
    url:'data/writerList.php?pageNum='+pageNum,
    success:function(pager){
     // console.log(arguments);
      var html="";
      $.each(pager.data,function(i,writer){
        html+=`<div class="content1">
        <div class="content1_top">
          <!--图像-->
          <div id="img1" class="lf img">
            <img src="${writer.wimg}" alt=""/>
          </div>
          <!--文字说明-->
          <div class="introduction">
            <h2>${writer.wtopic}</h2>
            <p><b class="time"></b><span class="shijian">2016年08月24日</span><b class="comment"></b><span class="pinglun"><a
              href="">2条评论</a></span></p>
            <div>${writer.wintro}<a href="ear_detail.html" class="read">&gt&gt阅读全文及试听</a>
            </div>
          </div>
        </div>
        <div class="content1_bottom">
          <p class="lf"><b></b>故事，流行</p>
          <p class="rt"><b></b>${writer.wname}</p>
        </div>
      </div>`;
      });
      $('#left_content').html(html);
      //根据返回数据创建分页条
      var html='';
      if(pager.pageNum-1>0){
        html+=`<li><a href="${pager.pageNum-1}">${pager.pageNum-1}</a></li> `;
      }
      html+=`<li class="active"><a href="${pager.pageNum}">${pager.pageNum}</a></li> `;
      if(pager.pageNum+1<=pager.pageCount){
        html+=`<li><a href="${pager.pageNum+1}">${pager.pageNum+1}</a></li> `;
      }

      $('.pager').html(html);
    }
  });
};
