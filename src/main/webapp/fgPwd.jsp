<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/WEB-INF/config.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>
<style>
	*{
  font-family:微軟正黑體;  
}

body{
  background-color: white;
}

#username, #password, h3, #fullname, #comfirm_password,#username2, #password2{
  width: 200px;
  height: 20px;
  margin: 10px;
  color: #df5334;
}

h5{
  margin: 20px;
  color: #a3a2a3;
}

h5:hover{
  color: black;
}

#container1, #container2{
  /* margin: 50px; */
  padding: 10px;
  width: 230px;
  height: 300px;
  background-color: white;
  border-radius: 5px;
  border-top: 10px solid #df5334;
  box-shadow: 0 0px 70px rgba(0, 0, 0, 0.1);
  
  /*定位對齊*/
  position:relative;   
  margin: auto;
  top: 100px;
  //text-align:center;  
}

.system_name{
  /*定位對齊*/
  position:relative;   
  margin: auto;
  top: 100px;
  text-align:center; 
}

.submit{
  color: white;  
  background: #df5334;
  width: 200px;
  height: 30px;
  margin: 10px;
  padding: 5px;
  border-radius: 5px;
  border: 0px;
}

.submit:hover{
  background: #db6937;
}

#container2{
  visibility: hidden;   /*剛開始消失*/
  height: 350px;
}


#copyright{
  text-align: center;
  color: #a3a2a3;
  margin: -200px 0px 0px 0px;
  font-size: 14px;
}

input{
  padding: 5px;
  border: none; 
  border:solid 1px #ccc;
  border-radius: 5px;
}
</style>
</head>
<body>
	<div class="system_name">
			<h2>忘記密碼</h2>
	  	</div>
		  <div class="login_page">
			<div id="container1">
			  <div class="login">  
				<h3>忘記密碼 Forget Password</h3>
	<form action="/jakartaee-hello-world/fgPwd" id="fgtwd_form" method="post">
		<input type="text" name="user" id="user_mail"  placeholder="信箱"  required>
		<div class="tab"></div>
            <input type="text" id="phone" name="phone" placeholder="手機電話" required>
        <div class="tab"></div>            
            <input type="submit" value="取回密碼" class="submit">
        <input type="hidden" name="baseurl" id="baseurl" value="${baseURL}">
     </form>  
    <h5 onclick="goToLogin()">返回登入</h5>
	<div id="msg" style="color:red;"></div>
			</div><!-- login end-->
		</div><!-- container1 end-->
	</div><!-- login_page end-->
	
<!-- 	<div id="copyright">
      <h4>Copyright © 2025 RoseWang All rights reserved</h4>因為js，會跑版 
    </div> -->
</body>
<script>
	function goToLogin() {
	    window.location.href = "login_Form.jsp";
	}
</script>
</html>