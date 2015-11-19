<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 7/11/15
  Time: 11:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="intro"/>
</head>

<body>
<g:render template="error" model='[msg : "${flash.message}"]'/>
<g:if test="${flash.message}">
    <script>
        $('#myModal1').modal('show')
    </script>
</g:if>
<div id="login-page">
    <div class="container">

        <g:form controller="user"  action="newUser" class="form-login">
            <h2 class="form-login-heading">Register - Let's Start Sharing</h2>
            <div class="login-wrap">
                <input type="text" class="form-control" name="firstName" placeholder="First Name" autofocus>
                <br>
                <input type="text" class="form-control" name="lastName" placeholder="Last Name"/>
                <br>
                <input type="text" class="form-control" name="userName" placeholder="User Name"/>
                <br>
                <input type="password" class="form-control" name="password" placeholder="Password"/>
                <br>
                <input type="password" class="form-control" name="confPassword" placeholder="Confirm Password"/>
                <br>
                <input type="email" class="form-control" name="email" placeholder="Email"/>
                <br>
                <input type="number" class="form-control" name="phone" placeholder="Phone Number"/>
                <br>
                <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-user"></i> SIGN UP</button>
            </div>
        </g:form>

    </div>
</div>
</body>
</html>