<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/common.css" rel="stylesheet" tyle="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>用户注册</title>
</head>

<body>
<!--顶部样式-->
<div class="common_top">
 <div class="Narrow">
  <div class=" left logo"><a href="#"><font color="#008CD6" size="7">微淘商城</font></a></div>
  <!--可修改图层-->
  <div class=" left festival"><a href="#"><img src="images/shopping (2).png" /></a></div>
  <!--电话图层-->
  <div class="phone">全国服务热线：<em>400-345-5633</em></div>
 </div>
</div>
<div class="rgister Narrow">
  <div class="Sign">
     <div class="AD_img"><img  src="images/adbg_03.png" /></div>
     <div class="rgister-form">
      <div class="rgister-name"><span class="name">用户注册</span> <span class="English">REGISTER</span></div>
	  <form id="form1" name="form1" method="post" action="RegisterServlet"> 
	   <div class="form clearfix">	
	    <div class="item"><label class="rgister-label">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</label><input name="username" type="text"  class="text" /><b>*</b></div>
		<div class="item"><label class="rgister-label" >密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label><input name="password" type="password"  class="text" p/><b>*</b></div> 
		<div class="item"><label class="rgister-label " >确认密码：</label><input name="password" type="password"  class="text" /><b>*</b></div>
	    <div class="item"><label class="rgister-label" >电子邮箱：</label><input name="email" type="text"  class="text" /><b>*</b></div> 
	 
	    <div class="item "><label  class="rgister-label ">验&nbsp;证&nbsp;码：</label><input name="" type="text"  class="Recommend_text" /></div>
		<div class="item-ifo">
                    <input type="checkbox" class="checkbox left" checked="checked" id="readme" onclick="agreeonProtocol();">
                    <label for="protocol" class="left">我已阅读并同意<a href="#" class="blue" id="protocol">《福际商城用户注册协议》</a></label>
                </div>
	  </div>	
	  <div class="rgister-btn">
	  <input type="submit" value="注冊" class="btn_rgister"/>
	  </div>
	  <div class="Note"><span class="login_link">已是会员<a href="login.jsp">请登录</a></span></div>	  
	  </form>
		</div>		
   </div>
</div>
<!--底部样式-->
 <div class="bottom_footer">
   <p><a href="#">关于我们</a> | <a href="#">联系我们</a> | <a href="#">商家入驻</a> | <a href="#">法律申明</a> | <a href="#">友情链接</a>  </p>
	 <p>Copyright©2014四川金祥保险销售有限公司.All Rights Reserved. </p>
	 <p>川ICP备09150084号</p>
   </div>
</body>
</html>
