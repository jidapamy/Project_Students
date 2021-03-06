<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='https://www.google.com/recaptcha/api.js'></script>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-font-smoothing: antialiased;
  -o-font-smoothing: antialiased;
  font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
  
}
textcolor{
  color:#1C1C1C;
}
body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  color: #777;
  background: #1E93B4;
}

.container {
  max-width: 400px;
  width: 100%;
  margin: 0 auto;
  position: relative;
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="tel"],
#contact input[type="url"],
#contact input[type="password"],
#contact input[type="date"],
#contact textarea,
#contact button[type="submit"] {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
   background: rgba(255,255,255,.1);
}

#contact {
  /* background: #F9F9F9;
  padding: 25px;
  margin: 150px 0;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  border-radius:13px; */
    background: #F9F9F9;
    padding: 25px;
    /* margin: 150px 0; */
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    border-radius: 13px;
    width: 100%;
    margin-top:50%;
    position: absolute;
}

#contact h3 {
  display: block;
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
}

#contact h4 {
  margin: 5px 0 15px;
  display: block;
  font-size: 13px;
  font-weight: 400;
}

fieldset {
  border: medium none !important;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
  color: black;
  background: rgba(255,255,255,.1);
      
  
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="tel"],
#contact input[type="url"],
#contact input[type="password"],
#contact input[type="date"],
#contact textarea {
  width: 100%;
  border: 1px solid #e8eeef;
  /* background: rgba(255,255,255,.1); */
  background-color: #e8eeef;
  border-radius:7px;
  margin: 0 0 5px;
  padding: 10px;
}

#contact input[type="text"]:hover,
#contact input[type="email"]:hover,
#contact input[type="tel"]:hover,
#contact input[type="password"]:hover,
#contact input[type="url"]:hover,
#contact input[type="date"]:hover,
#contact textarea:hover {
  -webkit-transition: border-color 0.3s ease-in-out;
  -moz-transition: border-color 0.3s ease-in-out;
  transition: border-color 0.3s ease-in-out;
  border: 1px solid #e8eeef;
   /* background: rgba(255,255,255,.1); */
}

#contact textarea {
  height: 100px;
  max-width: 100%;
  resize: none;
}

#contact button[type="submit"] {
  cursor: pointer;
  width: 100%;
  border: none;
  background: #0DBBEC;
  border: 1px solid #0A99C1;
  border-width: 1px 1px 3px;
  color: #FFF;
  margin: 13px 0 -9px;
  padding: 10px;
  font-size: 15px;
  border-radius: 13px;
}

#contact button[type="submit"]:hover {
  background: #0BB1E0;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active {
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.copyright {
  text-align: center;
}

#contact input:focus,
#contact textarea:focus {
  outline: 0;
  border: 1px solid #C1C8C9;
}

::-webkit-input-placeholder {
  color: #888;
}

:-moz-placeholder {
  color: #888;
}

::-moz-placeholder {
  color: #888;
}

:-ms-input-placeholder {
  color: #888;
}
</style>
<title>Login</title>
</head>
<body>
	<div id="particles-js"> 
            <div class="container">
                <form id="contact" action="profile" method="post" modelAttribute="loginForm">
                    <h3 style="text-align:center;color:black;">LOGIN</h3>
                    <fieldset>
                         เลขที่บัตรประชาชน/Passport No.<input placeholder="เลขที่บัตรประชาชน/Passport No." name="passportno" type="text" tabindex="1" required autofocus>
                    </fieldset>
                    <fieldset>
                         Date of Birth<input placeholder="Date of Birth" type="text" tabindex="2" required name="birthday">
                    </fieldset>
                     <div class="g-recaptcha" data-sitekey="6LcUSD4UAAAAAJKU_d3hHUHxWSb7Cm0bEC65liHy"></div>
                    <fieldset>
                        <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">LOGIN</button>
                    </fieldset>
                </form>
            </div>
	</div>
	
</body>
</html>