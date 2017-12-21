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
    <link rel="stylesheet" href="${resource(dir: "plugins1/datatables", file: "dataTables.bootstrap.css")}">
    %{--<link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">--}%

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

    <script type="text/javascript">
        jQuery(document).ready(function(){
            alert("code");
            $('#example').DataTable(
                {
                    <%--	"sScrollX": '100%' --%>
                });
        });
    </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <g:render template="headerTemplate" model="${[user : user]}"></g:render>
    <g:render template="menuTemplate" model="${[user : user]}"></g:render>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

    <g:if test="${message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>


    <div class="box">
        <div class="box-header">
            <h3 align="center" style="font-weight: bold">Employee List</h3>
            <g:if test="${message}">
                <h3 align="center" style="color: green">${message}</h3>
            </g:if>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Sl No. </th>
                    <th>Name</th>
                    <th>Designation</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>

                <g:each in="${userInstanceList}" status="i" var="userInstance">
                    <tr>
                        <td> ${i+1}</td>
                        <td> ${userInstance?.firstName} ${userInstance?.lastName}</td>
                        <td> ${userInstance?.designation}</td>
                        <td>

                            <g:link class="btn btn-xs btn-primary " action="viewAllEmployeeInformationOneByOne" id="${userInstance?.id}" params="[userId:user?.id]">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="View"/>
                            </g:link>

                            <g:link class="btn btn-xs btn-warning" action="deleteEmployeeInformation" id="${userInstance?.id}" params="[userId:user?.id]">
                                <i class="glyphicon glyphicon-remove"></i> <g:message code="default.button.edit.label1" default="Delete"/>
                            </g:link>
                        </td>
                    </tr>

                </g:each>

    </tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>






</div>
    <!-- /.content-wrapper -->
    <g:render template="footerForAdminLteTemplate"></g:render>

</div>
<!-- ./wrapper -->


<!-- jQuery 2.2.3 -->
<script type="text/javascript" src="${resource(dir: "js", file: "jquery-1.11.1.min.js")}"></script>

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
<script src="${resource(dir: "plugins1/fastclick", file: "fastclick.js")}"></script>
<script src="${resource(dir: "plugins1/datatables", file: "jquery.dataTables.min.js")}"></script>
<script src="${resource(dir: "plugins1/datatables", file: "dataTables.bootstrap.min.js")}"></script>


<script src="${resource(dir: "dist/js", file: "app.min.js")}"></script>
<script src="${resource(dir: "dist/js", file: "demo.js")}"></script>

<!-- bootstrap color picker -->
<!-- bootstrap time picker -->
<!-- SlimScroll 1.3.0 -->
<!-- iCheck 1.0.1 -->
<!-- FastClick -->
<!-- AdminLTE App -->
<!-- AdminLTE for demo purposes -->
<!-- Page script -->

<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
</script>
</body>
</html>
