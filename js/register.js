/**
 * Created by bjwsl-001 on 2016/10/21.
 */
/*表单验证*/
uname.onfocus=function(){
  nameMsg.innerHTML='请输入8-16位的数字或字母';
  nameMsg.style.background="#777";
}
uname.onblur=function(){
  if(this.validity.patternMismatch){
    nameMsg.innerHTML='用户名不正确';
    this.setCustomValidity('用户名不正确');
    nameMsg.style.background="#e4393c";
  }else if(this.validity.valueMissing){
    this.setCustomValidity('用户名不能为空');
    nameMsg.innerHTML='用户名不能为空';
    nameMsg.style.background="#e4393c";
  }else {
    nameMsg.innerHTML='用户名正确';
    nameMsg.style.background="#5CB85C";
  }
}
upwd.onfocus=function(){
  pwdMsg.innerHTML='请输入6-8位的数字';
  pwdMsg.style.background="#777";
}
upwd.onblur=function(){
  if(this.validity.patternMismatch){
    pwdMsg.innerHTML='密码输入有误';
    pwdMsg.style.background="#e4393c";
    this.setCustomValidity('密码输入有误');
  }else if(this.validity.valueMissing){
    pwdMsg.innerHTML='密码不能为空';
    pwdMsg.style.background="#e4393c";
    this.setCustomValidity('密码不能为空');
  }else if(this.validity.tooShort){
    pwdMsg.innerHTML='密码太短';
    pwdMsg.style.background="#e4393c";
    this.setCustomValidity('密码太短');
  }else{
    pwdMsg.innerHTML='密码正确';
    pwdMsg.style.background="#5CB85C";
  }
}
email.onfocus=function(){
  emailMsg.innerHTML='请输入合法的电子邮箱';
  emailMsg.style.background="#777";
}
email.onblur=function(){
  if(this.validity.typeMismatch){
    emailMsg.innerHTML='电子邮箱输入有误';
    emailMsg.style.background="#e4393c";
  }else if(this.validity.valueMissing){
    emailMsg.innerHTML='电子邮箱不能为空';
    emailMsg.style.background="#e4393c";
  }else if(this.validity.valid){
    this.setCustomValidity('');
    emailMsg.innerHTML='电子邮箱正确';
    emailMsg.style.background="#5cb85c";
  }
}
/*异步提交注册信息*/
$('#btn_register').click(function(){
  var data=$('#form-register').serialize();
  console.log('开始处理响应消息');
  $.ajax({
    type:'POST',
    url:'data/register.php',
    data:data,
    success:function(result){
      console.log('开始处理');
      console.log(result);
      if(result.msg==='succ'){
        alert('注册成功');
        location.href='ear_index.html';
      }else if(result.msg==='err'){
        alert('注册失败');
      }
    }
  })
});

