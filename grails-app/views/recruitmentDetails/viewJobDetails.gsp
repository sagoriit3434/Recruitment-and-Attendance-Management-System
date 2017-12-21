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
        <li> <g:link controller="user" action="aboutTheWebsite"> About </g:link></li>


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
        <li>
            <g:link controller="user" action="createUser"> Create User  </g:link>
        </li>

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

%{--<div class="wrapper">--}%
%{--<div class="content-wrapper">--}%
<!-- Content Header (Page header) -->



<section class="content">
    <h3 align="center">  Details Information </h3>

    <div class="row">
        <div class="col-md-12">

            <div class="col-md-2"></div>
            <div class="col-md-8">
                <!-- Profile Image -->

                <div class="box box-primary">
                    <div class="box-body box-profile">

                        <p style="font:15px arial, sans-serif"> <b> Designation </b> </p>



                        <p class="capano" style="font:15px arial, sans-serif"> ${recruitmentDetailsInstance?.position?.positionName} </p>

                        <p style="font:15px arial, sans-serif"> <b> Number Of Vacancy  </b> </p>
                        <p class="capano" style="font:15px arial, sans-serif">${recruitmentDetailsInstance?.numberOfVacancy}</p>

                        <p style="font:15px arial, sans-serif"> <b> Age Limit  </b> </p>
                        <p class="capano" style="font:15px arial, sans-serif">${recruitmentDetailsInstance?.age}</p>

                        <p style="font:15px arial, sans-serif"> <b> Last Date of Application  </b> </p>
                        <p class="capano" style="font:15px arial, sans-serif" id="dateNeedToShowInNormalFrom">${lastDateOfApplication}</p>


                        <p style="font:15px arial, sans-serif"> <b> Job details  </b> </p>
                        <g:textArea name="jobDetails" style="font:15px arial, sans-serif;border: none"   required="" value="${jobDetls}" rows="3" class="form-control capano"></g:textArea>

                        %{--<p class="capano" style="font:15px arial, sans-serif"> ${jobDetls} </p>--}%


                        %{--<g:textArea name="jobDetails" style="border: none"   required="" value="${jobDetls}"  rows="5" cols="80" class="form-control capano"></g:textArea>--}%

                        %{--<g:textArea name="jobDetails" value="${recruitmentDetailsInstance?.jobDetails}" style="border: none" class="form-control capano"></g:textArea>--}%
                        %{--<p class="capano">${recruitmentDetailsInstance?.jobDetails}</p>--}%

                        <p style="font:15px arial, sans-serif"> <b> Experience  </b> </p>
                        <p class="capano" style="font:15px arial, sans-serif"> ${jobExp} </p>
                        %{--<g:textArea name="jobDetails" style="border: none"   required="" value="${jobExp}"  rows="5" cols="80" class="form-control capano"></g:textArea>--}%

                        %{--<g:textArea name="constrains" value="${jobExp}" style="border: none"></g:textArea>--}%


                        %{--<g:textArea name="jobDetails" style="border: none"   required="" value="${jobExp}"  rows="5" cols="80"></g:textArea>--}%

                        <p style="font:15px arial, sans-serif"> <b> Constrains  </b> </p>
                        <g:textArea name="jobDetails" style="font:15px arial, sans-serif;border: none"   required="" value="${jobCons}" rows="3" class="form-control capano"></g:textArea>

                        %{--<p class="capano" style="font:15px arial, sans-serif"> ${jobCons} </p>--}%

                        %{--<g:textArea name="jobDetails" style="border: none"   required="" value="${jobCons}"></g:textArea>--}%

                        <p style="font:15px arial, sans-serif"> <b> Facilities  </b> </p>
                        <g:textArea name="jobDetails" style="font:15px arial, sans-serif; border: none"   required="" value="${jobFac}" rows="3" class="form-control capano"></g:textArea>








                        <div align="center">
                            <g:link class="btn btn-md btn-success" controller="applicantInformation" action="onlineJobApplicationForm" id="${recruitmentDetailsInstance?.id}">
                                <g:message code="default.button.show.label" default="Apply Online"/>
                            </g:link>
                        </div>






                    %{--<g:link action="ddd" target="_blank">Click Here To View Details</g:link>--}%
                    %{--<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>--}%
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->




                <!-- /.box -->
            </div>



        </div>


    </div>




</section>









</body>
</html>




