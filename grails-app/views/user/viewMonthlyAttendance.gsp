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
            <h1 style="padding-left: 45%"> Monthly Attendance Details </h1>
        </section><!-- /.content-header -->

    %{--<section class="flash-message">--}%
    %{--<g:render template="../layouts/flashMessage"/>--}%
    %{--</section><!--Flash Message-->--}%

        <g:form method="get" action="viewMonthlyAttendance" id="${userInstance?.id}">
            <section class="content">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="row">

                            <div class='col-xs-12 col-sm-6 col-md-6 col-lg-6'>
                                <label><g:message code="ssmBeneficiary.programName.label1" default="Month"/></label>
                                <g:if test="${params?.search}">
                                    <g:select name="month" from="${['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']}" required="" noSelection="${["": "Select One"]}" value="${month}" class="form-control"/>


                                </g:if>
                                <g:else>
                                    <g:select name="month" from="${['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']}" required="" noSelection="${["": "Select One"]}" class="form-control"/>


                                </g:else>

                                %{--<g:select name="month" from="${['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']}" value="${['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']}"--}%
                                          %{--noSelection="['':'Select One']" required="required"/>--}%

                            </div>

                            <div class='col-xs-12 col-sm-6 col-md-6 col-lg-6'>
                                <label><g:message code="ssmBeneficiary.programName.label1" default="Year"/></label>
                                <g:if test="${params?.search}">
                                    <g:textField name="year" class="form-control" required="" value="${year}"></g:textField>

                                </g:if>
                                <g:else>
                                    <g:textField name="year" class="form-control" required=""></g:textField>


                                </g:else>

                            </div>


                        </div>

                        <input type="hidden" name="search" value="search">


                    </div>

                    <div class="box box-footer">
                        <div class="col-lg-12">
                            <button type="submit" name="search" id="search" class="btn btn-sm btn-primary pull-right"><i
                                    class="fa fa-search"></i> Search</button>
                        </div>
                    </div>
                </div>
            </section>
        </g:form>

    <div id="HTMLtoPDF">
        <section class="content"><!-- Main content -->
            <div class="box box-primary">
                <div class="box-header with-border">

                    <div class="row">

                        <div class="col-lg-4"></div>
                        <div class="col-lg-6">
                            <label>
                                <g:message code="user.userName.label" default="Name : " />
                            </label>
                            ${userInstance?.firstName} ${userInstance?.lastName}





                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4"></div>
                        <div class="col-lg-6">
                            <label>
                                <g:message code="user.userName.label" default="Designation : " />
                            </label>
                            ${userInstance?.designation}
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                    <div class="row">

                        <div class="col-lg-4"></div>
                        <div class="col-lg-6">
                            <label>
                                <g:message code="user.userName.label" default="Month : " />
                            </label>
                            ${month}
                        </div>
                        <div class="col-lg-2"></div>

                    </div>



                </div>


                <div class="box-body table-responsive">

                    <table class="table table-bordered table-striped table-hover table-condensed display nowrap th-center th-colored">
                        <thead>
                        <tr>

                            <th>${message(code: 'ssmBeneficiary.beneficiaryName.label1', default: 'Date')}</th>
                            <th>${message(code: 'ssmBeneficiary.beneficiaryName.label1', default: 'Entry Time')}</th>
                            <th>${message(code: 'ssmBeneficiary.beneficiaryName.label1', default: 'Exit Time')}</th>

                        </tr>
                        </thead>


                        <tbody>
                        <g:if test="${employeesMonthlyAttendance}">
                            <g:each in="${employeesMonthlyAttendance}" status="i" var="employeesMonthlyAttendanceInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td class="center">${employeesMonthlyAttendanceInstance?.date}</td>
                                    <td class="center">${employeesMonthlyAttendanceInstance?.entryTime}</td>
                                    <td class="center">${employeesMonthlyAttendanceInstance?.exitTime}</td>
                                </tr>
                            </g:each>


                        </g:if>
                        <g:else>
                            <tr style="color: red"> No Information is available.</tr>
                        </g:else>
                </div>
                        </tbody>

                        <tfoot>
                        <tr>
                            <td colspan="11">
                                <div class="pull-right">
                                    <g:paginate total="${employeesMonthlyAttendanceCount}"/>
                                </div>

                            </td>
                        </tr>
                        </tfoot>
                    </table>

                </div><!-- /.box-body table-responsive no-padding -->

                <div class="box-footer with-border">
                <button type="submit" name="search"  class="btn btn-sm btn-danger pull-right" onclick="HTMLtoPDF()"><i
                        class="fa fa-download"></i> Download </button>

                </div>
            </div><!-- /.box box-primary -->
        </section><!-- /.content -->




    %{--<a href="#" onclick="HTMLtoPDF()">Download PDF</a>--}%

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

<script type="text/javascript" src="${resource(dir: "js", file: "jquery-1.11.1.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "jspdf.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "jquery-2.1.3.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "pdfFromHTML.js")}"></script>



</body>
</html>
