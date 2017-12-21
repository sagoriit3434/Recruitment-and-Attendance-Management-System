<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>RMS</title>
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

    <style>

.btn-file {
    position: relative;
    overflow: hidden;
}
.btn-file input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
    width: 100px;
    height: 100px;
    font-size: 100px;
    text-align: right;
    filter: alpha(opacity=0);
    opacity: 0;
    outline: none;
    background: white;
    cursor: inherit;
    display: block;
}

#img-upload{
    width: 100px;
    height: 100px;
}


</style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <g:render template="headerTemplate" model="[user:user]"></g:render>
    <g:render template="menuTemplate" model="[user:user]"></g:render>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content">
        <h3 align="center"> Detail Information  </h3>
        <g:if test="${message}">
            <h4 align="center" style="color:blue"> <b>${message}</b></h4>
        </g:if>
            <g:elseif test="${confirmationMessage}">
                <h4 align="center" style="color:green;"> <b>${confirmationMessage}</b></h4>

            </g:elseif>

        <div class="row">
            <div class="col-md-12">

                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <!-- Profile Image -->

                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Personal Information </h3>
                            </div>

                            <g:render template="applicantIformationForShow" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>

                            %{--<g:render template="applicantIformationForShow" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>--}%
                        </div>


                    </div>

                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Educational Information </h3>
                            </div>
                            <g:render template="applicantEducationalIformationForShow" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>


                        </div>

                    </div>


                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Experience Information </h3>
                            </div>
                            <g:render template="applicantExperienceIformationForShow" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>


                        </div>

                    </div>






                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Skill Details </h3>
                            </div>
                            <g:render template="applicantSkillIformationForShow" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>


                        </div>



                        <div class="box-footer">
                            <g:if test="${applicantInformationInstance?.approveIndicator == false}">
                                %{--<input type="hidden" name="applicantInstanceId" value="${applicantInstance?.id}">--}%
                                <g:link class="btn btn-md btn-primary" action="approvedApplicant" id="${applicantInformationInstance?.id}" params="[userId:user?.id]">
                                    <i class="fa fa-fw fa-plus-square"></i> <g:message code="default.button.show.label" default="Approved"/>
                                </g:link>
                            </g:if>

                            <g:if test="${applicantInformationInstance?.discardIndicator == false}">

                                <g:link class="btn btn-md btn-danger pull-right" action="rejectApplicant" id="${applicantInformationInstance?.id}" params="[userId:user?.id]">
                                    <i class="fa fa-fw fa-minus-square"></i> <g:message code="default.button.show.label" default="Reject"/>
                                </g:link>

                            </g:if>



                        </div><!-- /.box-footer -->







                    <!-- /.box -->
                    </div>
                    <div class="col-md-1"></div>




                </div>


            </div>




    </section>

    </div>
    <!-- /.content-wrapper -->

    <g:render template="footerForAdminLteTemplate"></g:render>

    <!-- Control Sidebar -->
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<g:render template="scriptAndPluginForFormTemplatePage"></g:render>
</body>
</html>
