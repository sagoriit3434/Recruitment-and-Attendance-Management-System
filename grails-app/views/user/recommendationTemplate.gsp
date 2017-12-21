<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Advanced form elements</title>
    <!-- Tell the browser to be responsive to screen width -->
    %{--<link rel="stylesheet" href="${resource(dir: "css", file: "jquery.dataTables.min.css")}" type="text/css">--}%
    %{--<script type="text/javascript" src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>--}%



    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
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
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <g:render template="/user/headerTemplate" model="[user:user]"></g:render>
    <g:render template="/user/menuTemplate" model="[user:user]"></g:render>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->



        <section class="content">
            <h3 align="center">Available Offers </h3>
            <g:if test="${message}">
                <h5 align="center" style="color:red">${message} </h5>

            </g:if>

            <g:each in="${listOfRecruitmentDetails}" status="i" var="recruitmentDetailsInstance">
                <div class="row">
                    <div class="col-md-12">

                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <!-- Profile Image -->

                            <div class="box box-primary">
                                <div class="box-body box-profile">
                                    <p> Serial No : ${i+1} </p>

                                    <p> Designation : ${recruitmentDetailsInstance?.position?.positionName}</p>

                                    <g:link class="btn btn-md btn-success pull-right" action="recommendationTemplateForAvailablePosition" id="${recruitmentDetailsInstance?.id}" params="[userId:user?.id, rid : recruitmentDetailsInstance?.id]" target="_blank">
                                        <g:message code="default.button.show.label" default="Recommendation"/>
                                    </g:link>

                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->




                            <!-- /.box -->
                        </div>



                    </div>


                </div>


            </g:each>


        </section>



    </div>
    <!-- /.content-wrapper -->

    <g:render template="/user/footerForAdminLteTemplate"></g:render>

    <!-- Control Sidebar -->
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<g:render template="/user/scriptAndPluginForFormTemplatePage"></g:render>
</body>
</html>
