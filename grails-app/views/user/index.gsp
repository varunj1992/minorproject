<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 7/11/15
  Time: 9:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="intro"/>
</head>

<body>

<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
<div class="container">
    <g:render template="error" model='[msg : "${flash.message}"]'/>
    <g:if test="${flash.message}">
        <script>
            $('#myModal1').modal('show')
        </script>
    </g:if>
<!-- Modal -->
    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Forgot Password ?</h4>
                </div>
                <div class="modal-body">
                    <g:form controller="user"  action="forgotPassword" >
                        <div>
                            <input type="text" class="form-control" name="userName" placeholder="User Name" autofocus><br>
                            <button class="btn btn-theme" type="submit">Submit</button>
                        </div>
                    </g:form>
                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    <!-- modal -->
</div>

<div id="login-page">
    <div class="container">

        <g:form controller="user"  action="auth" class="form-login">
            <h2 class="form-login-heading">sign in now</h2>
            <div class="login-wrap">
                <input type="text" class="form-control" name="userName" placeholder="User Name" autofocus>
                <br>
                <input type="password" class="form-control" name="password" placeholder="Password">
                <label class="checkbox">
                    <span class="pull-right">
                        <a  data-toggle="modal" href="#myModal"> Forgot Password?</a>
                    </span>
                </label>
                <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
                <hr>
                <div class="registration">
                    Don't have an account yet?<br/>
                    <g:link class="" controller="user" action="register">
                        Create an account
                    </g:link>
                </div>

            </div>
        </g:form>
    </div>
</div>
</body>
</html>