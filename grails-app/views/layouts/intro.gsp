<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 8/11/15
  Time: 7:32 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>IOU - Sharing is Good</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>IOU - Sharing is Good</title>

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'css',file: 'bootstrap.css')}" rel="stylesheet">
    <!--external css-->
    <link href="${resource(dir: 'font-awesome/css',file: 'font-awesome.css')}" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'css',file: 'style.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'style-responsive.css')}" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>
</head>

<body>
<g:layoutBody/>
</body>
<footer>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${resource(dir: 'js',file: 'jquery.js')}"></script>
    <script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="${resource(dir: 'js',file: 'jquery.backstretch.min.js')}"></script>
    <script>
        $.backstretch("${resource(dir: 'img',file: 'weather.jpg')}", {speed: 500});
    </script>
</footer>
</html>