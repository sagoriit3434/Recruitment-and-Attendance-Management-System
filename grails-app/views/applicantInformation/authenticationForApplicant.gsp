<!DOCTYPE html>

<head>
    <title>RMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />



    <!-- jQuery -->
    <script type="text/javascript" src="${resource(dir: "indexPage/libs/jquery", file: "jquery.js")}"></script>

    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="${resource(dir: "indexPage", file: "jquery.smartmenus.js")}"></script>

    <!-- SmartMenus jQuery init -->
    <script type="text/javascript">
        $(function() {
            $('#main-menu').smartmenus({
                subMenusSubOffsetX: 1,
                subMenusSubOffsetY: -8
            });
        });
    </script>




    <!-- SmartMenus core CSS (required) -->
    <link href="${resource(dir: "indexPage/css", file: "sm-core-css.css")}" rel="stylesheet" type="text/css" />

    <!-- "sm-blue" menu theme (optional, you can use your own CSS, too) -->
    <link href=${resource(dir: "indexPage/css/sm-blue", file: "sm-blue.css")}" rel="stylesheet" type="text/css" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <link rel="stylesheet" href="${resource(dir: "bootstrap/css", file: "bootstrap.min.css")}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="${resource(dir: "plugins1/daterangepicker", file: "daterangepicker.css")}">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="${resource(dir: "plugins1/datepicker", file: "datepicker3.css")}">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="${resource(dir: "plugins1/iCheck", file: "all.css")}">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="${resource(dir: "plugins1/colorpicker", file: "bootstrap-colorpicker.min.css")}">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="${resource(dir: "plugins1/timepicker", file: "bootstrap-timepicker.min.css")}">


    <!-- Select2 -->
    <link rel="stylesheet" href=    "${resource(dir: "plugins1/select2", file: "select2.min.css")}">
    <!-- Theme style -->
    <link rel="stylesheet" href=    "${resource(dir: "dist/css", file: "AdminLTE.min.css")}">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->


    <link rel="stylesheet" href=    "${resource(dir: "dist/css/skins", file: "_all-skins.min.css")}">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


    <!-- YOU DO NOT NEED THIS - demo page content styles -->
    <link href="../libs/demo-assets/demo.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>





    <!-- jQuery -->
    <script type="text/javascript" src="${resource(dir: "navigationBar/src/libs/jquery", file: "jquery.js")}"></script>

    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="${resource(dir: "navigationBar/src", file: "jquery.smartmenus.js")}"></script>

    <!-- SmartMenus jQuery init -->
    <script type="text/javascript">
        $(function() {
            $('#main-menu').smartmenus({
                subMenusSubOffsetX: 1,
                subMenusSubOffsetY: -8
            });
        });
    </script>




    <!-- SmartMenus core CSS (required) -->
    <link href="${resource(dir: "navigationBar/src/css", file: "sm-core-css.css")}" rel="stylesheet" type="text/css" />

    <!-- "sm-blue" menu theme (optional, you can use your own CSS, too) -->
    <link href="${resource(dir: "navigationBar/src/css/sm-blue", file: "sm-blue.css")}" rel="stylesheet" type="text/css" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->




    <!-- YOU DO NOT NEED THIS - demo page content styles -->
    %{--<link href="../libs/demo-assets/demo.css" rel="stylesheet" type="text/css" />--}%
    <link href="${resource(dir: "navigationBar/src/libs/demo-assets", file: "demo.css")}" rel="stylesheet" type="text/css" />

    <style>
    p.capano{
        padding-left: .5cm;

    }
    .capano{
        padding-left: .5cm;

    }

    </style>




</head>
<body>



<nav id="main-nav" role="navigation">
    <!-- Sample menu definition -->
    <ul id="main-menu" class="sm sm-blue">
        <li><a href="http://localhost:8080/HRMS/">Home</a></li>
        %{--<li> <g:link controller="user" action="aboutTheWebsite"> About </g:link></li>--}%


        <li><a href="#">Available Job Offers </a>
            <ul class="mega-menu">

                <li>
                    <g:link controller="recruitmentDetails" action="viewAvailAbleJobs"> Available Jobs </g:link>
                </li>
                <li>
                    <g:link controller="applicantInformation" action="authenticationForApplicant"> View / Update CV </g:link>
                </li>

            </ul>
        </li>
        %{--<li>--}%
            %{--<g:link controller="user" action="createUser"> Create User  </g:link>--}%
        %{--</li>--}%

        <li>
            <g:link controller="user" action="signIn"> Sign In   </g:link>
        </li>


        <li>
            <g:link controller="applicantInformation" action="authenticationForApplicantForAdmitCard"> Admit Card </g:link>
        </li>



    </ul>
</nav>




<!-- =============================================================================== -->
<!-- ================= YOU DO NOT NEED ANYTHING AFTER THIS COMMENT ================= -->
<!-- =============================================================================== -->


<br>
<div class="col-md-3">

</div>

<div class="col-md-6">
    <!-- Horizontal Form -->
    <div class="box box-info">
        <div class="box-header with-border">
            <h3  align="center">Fill Up</h3>
            <p align="center" style="color: red; font:15px arial, sans-serif"> ${messsage}</p>
        </div>
        <g:form url="[action:'validateApplicantSerialNo']" >
            <div class="box-body">

                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">Serial No </label>

                    <div class="col-sm-10">
                        <input type="password" name="serialNo" class="form-control" id="inputPassword33" placeholder="Enter Your Serial No">
                    </div>
                </div>

                <br>
                <br>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember me
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <button type="" class="btn btn-default">Cancel</button>
                <button type="submit"  class="btn btn-info pull-right">Sign in</button>
            </div>

        </g:form>

    </form>
    </div>
</div>


</body>
</html>




