<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Advanced form elements</title>
    <!-- Tell the browser to be responsive to screen width -->
    %{--<link rel="stylesheet" href="${resource(dir: "css", file: "jquery.dataTables.min.css")}" type="text/css">--}%
    %{--<script type="text/javascript" src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>--}%

    <link rel="stylesheet" href="${resource(dir: "bootstrap/css", file: "bootstrap.min.css")}">
    <link rel="stylesheet" href="${resource(dir: "plugins1/datatables", file: "dataTables.bootstrap.css")}">



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
    <script src="${resource(dir: "plugins1/datatables", file: "jquery.dataTables.min.js")}"></script>
    <script src="${resource(dir: "plugins1/datatables", file: "dataTables.bootstrap.min.js")}"></script>



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>



  <![endif]-->




</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <g:render template="headerTemplate"></g:render>
    <g:render template="menuTemplate"></g:render>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content-header">
            <h1 style="color:blue; text-align: center;">Rejected Applicants List</h1>
        </section><!-- /.content-header -->







        <section class="content"><!-- Main content -->
            <div class="box box-primary">
                <div class="box-body table-responsive">

                    <table class="table table-bordered table-striped table-hover table-condensed display nowrap th-center th-colored">
                        <thead>
                        <tr>

                            <th>${message(code: 'ssmBeneficiary.programName.label1', default: 'SL No')}</th>
                            <th>${message(code: 'ssmBeneficiary.programName.label1', default: 'Applicant Name')}</th>

                            <th>${message(code: 'ssmBeneficiary.beneficiaryId.label', default: 'Applicant Email')}</th>

                            <th>${message(code: 'ssmBeneficiary.beneficiaryName.label1', default: 'Desire Position')}</th>

                            <th class="center">${message(code: 'ssmBeneficiary.beneficiaryName.label1', default: 'Action')}</th>


                        </tr>
                        </thead>


                        <tbody>
                        <g:if test="${applicantList}">
                            <g:each in="${applicantList}" status="i" var="applicantInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td class="center"> ${i+1} </td>
                                    <td class="center"> ${applicantInstance?.applicantName} </td>
                                    <td class="center">${applicantInstance?.emailAddress}</td>
                                    <td class="center">${applicantInstance?.recruitmentDetails?.position?.positionName}</td>
                                    <td class="center">


                                        <g:link class="btn btn-xs btn-success" action="viewApplicantInformation" id="${applicantInstance?.id}" params="[userId:user?.id]" target="_blank">
                                            <i class="fa fa-fw fa-eye"></i> <g:message code="default.button.show.label" default="View"/>
                                        </g:link>

                                        <g:link class="btn btn-xs btn-primary" action="approvedApplicant" id="${applicantInstance?.id}">
                                            <i class="fa fa-fw fa-plus-square"></i> <g:message code="default.button.show.label" default="Approved" params="[userId:user?.id]" target="_blank"/>
                                        </g:link>



                                    </td>

                                </tr>
                            </g:each>


                        </g:if>

                        </tbody>

                        <tfoot>
                        <tr>
                            <td colspan="11">
                                <div class="pull-right">
                                    <g:paginate total="${applicantInstanceCount}"/>
                                </div>

                            </td>
                        </tr>
                        </tfoot>
                    </table>

                </div><!-- /.box-body table-responsive no-padding -->
            </div><!-- /.box box-primary -->
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->    <!-- /.content-wrapper -->



<g:render template="footerForAdminLteTemplate"></g:render>

<!-- Control Sidebar -->
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<g:render template="scriptAndPluginForFormTemplatePage"></g:render>
%{--<script type="text/javascript" src="${resource(dir: "js", file: "jquery-1.11.1.min.js")}"></script>--}%


</body>
</html>
