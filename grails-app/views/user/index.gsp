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
<%--<g:render template="error" model='[msg : "${flash.message}"]'/>--%>
<g:if test="${flash.message.equals('false')}">
    <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Something Went Wrong</strong>. Better Try Again
    </div>
    <!--<script>
        $("#myModal1").modal('show')
        <%--$.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Error!',
            // (string | mandatory) the text inside the notification
            text: "${flash.message}",
            // (string | optional) the image to display on the left
            image: "${resource(dir: 'img', file: 'ui-sam.jpg')}",
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        })--%>
    </script>-->
</g:if>
<g:elseif test="${flash.message.equals('true')}">
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Well Done</strong>. Login to go to your home page
    </div>
</g:elseif>
<g:elseif test="${flash.message}">
    <div class="alert alert-info alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>${flash.message}</strong>
    </div>
</g:elseif>
<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
<div class="container">
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