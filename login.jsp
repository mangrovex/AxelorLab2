<%--

    Axelor Business Solutions

    Copyright (C) 2005-2018 Axelor (<http://axelor.com>).

    This program is free software: you can redistribute it and/or  modify
    it under the terms of the GNU Affero General Public License, version 3,
    as published by the Free Software Foundation.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

--%>
<%@ taglib prefix="x" uri="WEB-INF/axelor.tld" %>
<%@ page language="java" session="true" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" session="true" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.function.Function"%>
<%@ page import="com.axelor.i18n.I18n" %>
<%

Function<String, String> T = new Function<String, String>() {
  public String apply(String t) {
    try {
      return I18n.get(t);
    } catch (Exception e) {
      return t; 
    }
  }
};

String loginTitle = T.apply("Please sign in");
String loginRemember = T.apply("Remember me");
String loginSubmit = T.apply("Log in");

String loginUserName = T.apply("Username");
String loginPassword = T.apply("Password");

String warningBrowser = T.apply("Update your browser!");
String warningAdblock = T.apply("Adblocker detected!");
String warningAdblock2 = T.apply("Please disable the adblocker as it may slow down the application.");

int year = Calendar.getInstance().get(Calendar.YEAR);
String copyright = String.format("&copy; 2005 - %s Axelor. All Rights Reserved.", year);

String loginHeader = "/login-header.jsp";
if (pageContext.getServletContext().getResource(loginHeader) == null) {
  loginHeader = null;
}

@SuppressWarnings("all")
Map<String, String> tenants = (Map) session.getAttribute("tenantMap");
String tenantId = (String) session.getAttribute("tenantId");

%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="google" content="notranslate">
    <link rel="shortcut icon" href="ico/favicon.ico">
    <x:style src="css/application.login.css" />
    <x:script src="js/application.login.js" />
  </head>
  <style>
	.login{
		background-image: url("https://agentsportal.vumigroup.com/assets/img/background_general3.png") !important;
		background-size: 100%;
		background-repeat: no-repeat;
	}
	.header{
		background-color: transparent !important;
	}
	/*a{
		color: #ffffff !important;
	}*/
	.login .content{
		background-color: #FFFFFF !important;
		/*background-size: 100%;
      margin-right: 75%;*/
    margin: 0 5% 5% 1% !important;
		opacity: 1;
		padding: 0 45px 45px 45px!important;

	}
  @media only screen and (min-width: 354px) and (max-width: 767px){
		/* For tablets: */
    .login{
  		background-image: url("https://agentsportal.vumigroup.com/assets/img/background_general4.png") !important;
  		background-size: 20%;
  		background-repeat: no-repeat;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
  @media only screen and (min-width: 767px) and (max-width: 1024px){
		/* For tablets: */
    .login{
  		background-image: url("https://agentsportal.vumigroup.com/assets/img/background_general3.png") !important;
  		background-size: 20%;
  		background-repeat: no-repeat;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
  @media only screen and (min-width: 1024px) and (max-width: 1439px){
		/* For tablets: */
    .login{
  		background-image: url("https://agentsportal.vumigroup.com/assets/img/background_general3.png") !important;
  		background-repeat: no-repeat;
      background-size: 80%;
      background-position-x: 48px;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
  @media only screen and (min-width: 1440px){
		/* For tablets: */
    .login{
  		background-image: url("img/background_general3.png") !important;
  		background-repeat: no-repeat;
      background-size: 100%;
      background-position-x: 50px;
      background-position-y: -100px;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
  @media only screen and (min-width: 1440px) and (max-width: 2560px) and (orientation: portrait){
		/* For tablets: */
    .login{
  		background-image: url("img/background_general3.png") !important;
  		background-repeat: no-repeat;
      background-size: 90%;
      background-position-x: 10px;
      background-position-y: -190px;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
  @media only screen and (min-width: 1441px) and (max-width: 2560px) and (orientation: landscape){
		/* For tablets: */
    .login{
  		background-image: url("img/background_general3.png") !important;
  		background-repeat: no-repeat;
      background-size: 90%;
      background-position-x: 90px;
      background-position-y: -73px;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
  @media only screen and (min-width: 1600px) and (max-width: 2560px) and (orientation: landscape){
		/* For tablets: */
    .login{
  		background-size: 90%;
      background-position-x: 90px;
      background-position-y: -120px;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
  @media only screen and (min-width: 2060px) and (max-width: 3000px) and (orientation: landscape){
		/* For tablets: */
    .login{
  		background-size: 90%;
      background-position-x: 90px;
      background-position-y: -211px;
  	}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
	@media only screen and (min-width: 767px) and (max-width: 1280px) and (orientation: landscape){
		/* For tablets: */
		.login{
			background-image: url("img/login_horizontal2.png") !important;
			background-size: 100%;
			/*background-size: 769px;*/
		}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
	@media only screen and (min-width: 768px) and (max-width: 1280px) and (orientation: portrait){
		/* For tablets: */
		.login{
			background-image: url("img/login_vertical2.png") !important;
			background-size: 100%;
			/*background-size: 769px;*/
		}
    #texto_background{
      visibility: hidden;
    }
    #mapa_footer{
      visibility: hidden;
    }
	}
	@media only screen and (min-width: 320px) and (max-width: 768px) and (orientation: landscape){
		/* For tablets: */
		.login{
			background-image: none !important;
			background-size: auto 100%;
			/*background-size: 769px;*/
		}
    .login .content{
      margin-right: 100%;
      margin: 0 5% 5% 20% !important;
      padding: 0 5px 5px 5px!important;
      width: 60%;
  	}
    .logo{
      padding: 0 0px 35px 0px!important;

    }
    #texto_background2{
      font-size:80%;
    }
    #texto_background{
      visibility: visible;
    }
    #mapa_footer{
      visibility: visible;
    }
	}
	@media only screen and (min-width: 768px) and (max-width: 860px) and (orientation: landscape){
		/* For tablets: */
		.login{
			background-image: none !important;
			background-size: auto 100%;
			/*background-size: 769px;*/
		}
    .login .content{
      margin-right: 100%;
      margin: 0 5% 5% 20% !important;
      padding: 0 5px 5px 5px!important;
      width: 60%;
  	}
    .logo{
      padding: 0 0px 35px 0px!important;

    }
    #texto_background2{
      font-size:100%;
    }
    #texto_background{
      visibility: visible;
    }
    #mapa_footer{
      visibility: visible;
    }
	}
	@media only screen and (min-width: 320px) and (max-width: 375px) and (orientation: portrait){
		/* For tablets: */
		.login{
			background-image: none !important;
			background-size: auto 100%;
			/*background-size: 769px;*/
		}
    .login .content{
      margin-right: 100%;
      margin: 0 5% 5% 20% !important;
      padding: 0 5px 5px 5px!important;
      width: 60%;
  	}
    .logo{
      padding: 0 0px 35px 0px!important;

    }
    #texto_background2{
      font-size:80%;
    }
    #texto_background{
      visibility: visible;
    }
    #mapa_footer{
      visibility: visible;
    }
	}
	@media only screen and (min-width: 375px) and (max-width: 768px) and (orientation: portrait){
		/* For tablets: */
		.login{
			background-image: none !important;
			background-size: 200%;
			/*background-size: 769px;*/
		}
    .login .content{
      margin: 0 5% 5% 20% !important;
      padding: 0 5px 5px 5px!important;
      opacity: 1;
      width: 60%;
    }
    .logo{
      padding: 0 0px 35px 0px!important;

    }
    #texto_background{
      visibility: visible;
    }
    #texto_background2{
      font-size:95%;
    }
    #mapa_footer{
      visibility: visible;
    }
	}

	@media only screen and (min-width: 350px) and (max-width: 375px) and (orientation: portrait){
		/* For tablets: */
    .login{
			background-image: none !important;
			background-size: 0%;
			/*background-size: 769px;*/
		}

    #texto_background{
      visibility: visible;
    }
    #texto_background2{
      font-size:70%;
    }
    #mapa_footer{
      visibility: visible;
    }

    .login .content{
      margin: 0 5% 5% 20% !important;
      padding: 0 5px 5px 5px!important;
      opacity: 1;
      width: 60%;
    }
	}
	@media only screen and (min-width: 110px) and (max-width: 350px) and (orientation: portrait){
		/* For tablets: */

    #texto_background{
      visibility: visible;
    }
    #texto_background2{
      font-size:70%;
    }
    #txt_portal_agente{
      font-size:130%;
    }
    #mapa_footer{
      visibility: visible;
    }
    .login{
			background-image: none !important;
			background-size: 0%;
			/*background-size: 769px;*/
		}

    #logo_vumi_azul{
      width: 80% !important;
    }
    .login .content{
      margin: 0 5% 5% 20% !important;
      padding: 0 5px 5px 5px!important;
      opacity: 1;
      width: 60%;
    }

	}

	</style>
	       		<style>
h4{
	color: #FFFFFF;
	font-size:22px;
	line-height: 1.5;
	/*font-weight: bold !important;*/
}
h3{
	color: #FFFFFF;
	font-size:18px;
	line-height: 1.5;
	/*font-weight: bold !important;*/
}
.text{
	color: #FFFFFF;
	text-align: center;
	font-size:16px;
	font-weight: bold !important;
}
p{
	color: #FFFFFF;
	text-align: center;
	font-size:14px;
}
</style>
	
  <body class="login">

    <% if (loginHeader != null) { %>
    <jsp:include page="<%= loginHeader %>" />
    <% } %>

    <div class="container-fluid">
      <div class="content">
      		<br/>
			<br/>
			<br/>
			<div id="texto_background">
          		<h6 id="texto_background2" style="color: #002855;" class="text center">BIENVENIDOS · WELCOME · BEM-VINDOS</h6>
        	</div>
			<div class="logo">
				<img src="img/logo_vumi_azul_transparente.png" alt="logo" style="border-radius: 0px !important; width: auto;"/>
			</div>
       
          <form id="login-form" action="" method="POST">
            <div class="form-fields">
              <div class="input-prepend">
                <span class="add-on"><i class="fa fa-envelope"></i></span>
                <input type="text" id="usernameId" name="username" placeholder="<%= loginUserName %>" autofocus="autofocus">
              </div>
              <div class="input-prepend">
                <span class="add-on"><i class="fa fa-lock"></i></span>
                <input type="password" id="passwordId" name="password" placeholder="<%= loginPassword %>">
              </div>
              <% if (tenants != null && tenants.size() > 1) { %>
              <div class="input-prepend">
                <span class="add-on"><i class="fa fa-database"></i></span>
                <select name="tenantId">
                <% for (String key : tenants.keySet()) { %>
                	<option value="<%= key %>" <%= (key.equals(tenantId) ? "selected" : "") %>><%= tenants.get(key) %></option>
                <% } %>
                </select>
              </div>
              <% } %>
              <label class="ibox">
                <input type="checkbox" value="rememberMe" name="rememberMe">
                <span class="box"></span>
                <span class="title"><%= loginRemember %></span>
              </label>
            </div>
            <div class="form-footer">
              <button class="btn btn-primary" type="submit"><%= loginSubmit %></button>
            </div>
          </form>
        </div>
      
      <div id="br-warning" class="alert alert-block alert-error hidden">
	  	<h4><%= warningBrowser %></h4>
	  	<ul>
	  		<li>Chrome</li>
	  		<li>Firefox</li>
	  		<li>Safari</li>
	  		<li>IE >= 11</li>
	  	</ul>
	  </div>
	  <div id="ad-warning" class="alert hidden">
	  	<h4><%= warningAdblock %></h4>
	  	<%= warningAdblock2 %>
	  </div>
    </div>

    <footer class="container-fluid">
      <p class="credit small"><%= copyright %></p>
    </footer>
    
    <div id="adblock"></div>

    <script type="text/javascript">
    $(function () {
	    if (axelor.browser.msie && !axelor.browser.rv) {
	    	$('#br-warning').removeClass('hidden');
	    }
	    if ($('#adblock') === undefined || $('#adblock').is(':hidden')) {
	    	$('#ad-warning').removeClass('hidden');
	    }
    });
    </script>
  </body>
</html>
