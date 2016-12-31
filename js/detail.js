/**功能1：页面加载完成后，异步请求页面的header和footer**/
 $(function(){ //页面加载完成事件的回调
             $('div#header').load('data/header.php');
             $('div#footer').load('data/footer.php');
 });
 /**功能2：音乐播放器的控制**/
 $('#control').click(function () {
   if (music.paused) {
     music.play();
     var x = 32;
     var xDirection = 1;//只能取值1或者-1

        timer = setInterval(function () {
         x += 2 * xDirection;
         leftX = x + "px";
         $('#words').css('left', leftX);
         if (x >= 100) {
           xDirection = -1;
         } else if (x <= 32) {
           xDirection = 1;
         }
       }, 100);

     }else if(music.played){
       music.pause();
       clearInterval(timer);
       timer=null;
     }
 });

 /**功能3.模态登录框的现实与隐藏**/
  $('#login_close').click(function(){
	    $('.modal').css('display','none');
		//$('.modal').addClass('fade');
	  });
	  $('#a_login').click(function(){
	    $('.modal').css('display','block');
	  });

 /**功能4.这是class为my-accordion的元素为手风琴组件**/
 $(".my-accordion").accordion();


/**功能5.为document添加滚动事件监听:**/
document.addEventListener("scroll",
  function(){
    //查找boll的a
    var a=document.getElementById("boll");
    //设置a的display为:
    //滚动过的距离>=500?block:none
    a.style.display=
      document.body.scrollTop>=700?
        "block":"none";

  }
);


 