<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 7/11/15
  Time: 1:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>IOU - Sharing is Good</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'bootstrap.css')}" />
    <!--external css-->
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'font-awesome/css',file: 'font-awesome.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'zabuto_calendar.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/gritter/css',file: 'jquery.gritter.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'lineicons',file: 'style.css')}" />
    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'style.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'style-responsive.css')}" />
    <script src="${resource(dir: 'js/chart-master',file: 'Chart.js')}"></script>
    <script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>
</head>


<body>



<!-- js placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js',file: 'jquery.js')}"></script>
<script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'jquery-ui-1.9.2.custom.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'jquery.ui.touch-punch.min.js')}"></script>
<script class="include" type="text/javascript" src="${resource(dir: 'js',file: 'jquery.dcjqaccordion.2.7.js')}"></script>
<script src="${resource(dir: 'js',file: 'jquery.scrollTo.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'jquery.nicescroll.js')}" type="text/javascript"></script>


<!--common script for all pages-->
<script src="${resource(dir: 'js',file: 'common-scripts.js')}"></script>

<!--script for this page-->

<script>
    //custom select box

    $(function(){
        $('select.styled').customSelect();
    });

</script>
<g:layoutBody/>
</body>
</html>