<!DOCTYPE html>
<html lang="en-US">
<head>
    <title>SmartMenus jQuery Website Menu - jQuery Plugin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />

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




</head>

<body>




<nav id="main-nav" role="navigation">
    <!-- Sample menu definition -->
    <ul id="main-menu" class="sm sm-blue">
        <li><a href="http://www.smartmenus.org/">Home</a></li>
        <li><a href="http://www.smartmenus.org/about/">About</a>
            <ul>
                <li><a href="http://www.smartmenus.org/about/introduction-to-smartmenus-jquery/">Introduction to SmartMenus jQuery</a></li>
                <li><a href="http://www.smartmenus.org/about/themes/">Demos + themes</a></li>
                <li><a href="http://vadikom.com/about/#vasil-dinkov">The author</a></li>
                <li><a href="http://www.smartmenus.org/about/vadikom/">The company</a>
                    <ul>
                        <li><a href="http://vadikom.com/about/">About Vadikom</a></li>
                        <li><a href="http://vadikom.com/projects/">Projects</a></li>
                        <li><a href="http://vadikom.com/services/">Services</a></li>
                        <li><a href="http://www.smartmenus.org/about/vadikom/privacy-policy/">Privacy policy</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="http://www.smartmenus.org/download/">Download</a></li>
        <li><a href="http://www.smartmenus.org/support/">Support</a>
            <ul>
                <li><a href="http://www.smartmenus.org/support/premium-support/">Premium support</a></li>
                <li><a href="http://www.smartmenus.org/support/forums/">Forums</a></li>
            </ul>
        </li>
        <li><a href="http://www.smartmenus.org/docs/">Docs</a></li>
        <li><a href="#">Sub test</a>
            <ul>
                <li><a href="#">Dummy item</a></li>
                <li><a href="#">Dummy item</a></li>
                <li><a href="#" class="disabled">Disabled menu item</a></li>
                <li><a href="#">Dummy item</a></li>
                <li><a href="#">more...</a>
                    <ul>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">more...</a>
                            <ul>
                                <li><a href="#">Dummy item</a></li>
                                <li><a href="#" class="current">A 'current' class item</a></li>
                                <li><a href="#">Dummy item</a></li>
                                <li><a href="#">more...</a>
                                    <ul>
                                        <li><a href="#">subMenusMinWidth</a></li>
                                        <li><a href="#">10em</a></li>
                                        <li><a href="#">forced.</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Dummy item</a></li>
                                <li><a href="#">Dummy item</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#">Job Offers </a>
            <ul class="mega-menu">

                <li>
                    <g:link controller="recruitmentDetails" action="viewAvailAbleJobs"> Available Jobs </g:link>
                </li>
                <li>
                    <g:link controller="applicantInformation" action="authenticationForApplicant"> View / Update CV </g:link>
                </li>

            </ul>
        </li>
        <li>
            <g:link controller="user" action="createUser"> Create User  </g:link>
        </li>

        <li>
            <g:link controller="user" action="signIn"> Sign In   </g:link>
        </li>

        <li>
            <g:link controller="attendanceInformation" action="attendance"> Attendance </g:link>
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
            <h3  align="center">Attendance</h3>
            <g:if test="${message}">
            <p style="text-align: center; color: #00ca6d">${message}</p>

            </g:if>

            <g:elseif test="${message1}">
            <p style="text-align: center; color: #cc0000">${message1}</p>

            </g:elseif>
            %{--<p style="text-align: center; color: #00ca6d">Your entry time is succesfully recorded.</p>--}%

        </div>
        <g:form url="[action:'validateUserCredentialForAttendance', controller:'attendanceInformation']" >
            <div class="box-body">


                <div class="form-group">
                            <div class="radio radio-inline col-sm-5">
                                <label><input type="radio" name="optradio" value="entry" class="control-label" checked>Entry</label>
                            </div>
                            <div class="radio radio-inline col-sm-5" style="padding-left: 70px">
                                <label><input type="radio" name="optradio" value="exit" class="control-label" >Exit</label>
                            </div>

                </div>


                <br>
                <br>
                <br>


                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label" style="text-align: right">User Name</label>

                    <div class="col-sm-4">
                        <input type="text" name="userName" class="form-control" placeholder="user name">
                    </div>

                    <label for="password" class="col-sm-2 control-label" style="text-align: right">Password</label>

                    <div class="col-sm-4">
                        <input type="password" name="password" class="form-control" id="inputPassword33" placeholder="Password">
                    </div>
                </div>

                <br>
                <br>
                <br>


            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <button type="submit"  class="btn btn-info pull-right">Submit</button>
            </div>

        </g:form>

    </form>
    </div>
</div>

<div class="col-md-3">

</div>

<script src="${resource(dir: "plugins1/jQuery", file: "jquery-2.2.3.min.js")}"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${resource(dir: "bootstrap/js", file: "bootstrap.min.js")}"></script>
<script src="${resource(dir: "plugins1/select2", file: "select2.full.min.js")}"></script>
<script src="${resource(dir: "plugins1/input-mask", file: "jquery.inputmask.js")}"></script>
<script src="${resource(dir: "plugins1/input-mask", file: "jquery.inputmask.date.extensions.js")}"></script>
<script src="${resource(dir: "plugins1/input-mask", file: "jquery.inputmask.extensions.js")}"></script>
<!-- Select2 -->
<!-- InputMask -->
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>

<script src="${resource(dir: "plugins1/daterangepicker", file: "daterangepicker.js")}"></script>
<!-- bootstrap datepicker -->
<script src="${resource(dir: "plugins1/datepicker", file: "bootstrap-datepicker.js")}"></script>
<script src="${resource(dir: "plugins1/colorpicker", file: "bootstrap-colorpicker.min.js")}"></script>
<script src="${resource(dir: "plugins1/timepicker", file: "bootstrap-timepicker.min.js")}"></script>
<script src="${resource(dir: "plugins1/slimScroll", file: "jquery.slimscroll.min.js")}"></script>
<script src="${resource(dir: "plugins1/iCheck", file: "icheck.min.js")}"></script>
<script src="${resource(dir: "plugins1/fastclick", file: "fastclick.js")}"></script>
<script src="${resource(dir: "dist/js", file: "app.min.js")}"></script>
<script src="${resource(dir: "dist/js", file: "demo.js")}"></script>



</body>
</html>