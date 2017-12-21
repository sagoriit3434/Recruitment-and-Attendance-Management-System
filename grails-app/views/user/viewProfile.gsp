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


    <g:render template="headerTemplate" model="${[user : user]}"></g:render>
    <g:render template="menuTemplate" model="${[user : user]}"></g:render>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <section class="content">
            <div class="row">
                <div class="col-md-12">

                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <!-- Profile Image -->
                        <div class="box box-primary">
                            <div class="box-body box-profile">
                                %{--<img class="profile-user-img img-responsive img-circle" src="../../dist/img/user4-128x128.jpg" alt="User profile picture">--}%
                        <g:if test="${user?.profilePicture}">
                            <img class="profile-user-img img-responsive img-circle" src="${request.contextPath}/commonAjax/downloadDoc?moduleName=user&subModuleName=user_image&fileName=${user?.profilePicture}" alt="User profile picture">


                        </g:if>
                                <g:else>
                                    <img class="profile-user-img img-responsive img-circle" src="${resource(dir: "dist/img", file: "images.png")}" alt="User profile picture">

                                </g:else>

                                %{--<a href="${request.contextPath}/commonAjax/downloadDoc?moduleName=ssm&subModuleName=ssm_program_document&fileName=${ssmProgramInformationInstance?.programDocumentName}">View/download File</a>--}%


                                <g:if test="${user?.firstName && user?.lastName}">
                                    <h3 class="profile-username text-center"> ${user?.firstName} ${user?.lastName}</h3>
                                </g:if>
                                <g:else>
                                    <h3 class="profile-username text-center">Name is not enrolled.</h3>

                                </g:else>

                                <g:if test="${user?.designation}">
                                    <p class="text-muted text-center">${user?.designation}</p>
                                </g:if>
                                <g:else>
                                    <p class="text-muted text-center">Designation is not enrolled. </p>

                                </g:else>


                                <ul class="list-group list-group-unbordered">
                                    <li class="list-group-item">
                                        %{--<b>Followers</b> <a class="pull-right">1,322</a>--}%
                                        <b> User Name </b> <a class="pull-right" > ${user?.userName} </a>
                                    </li>

                                    <li class="list-group-item">
                                        %{--<b>Followers</b> <a class="pull-right">1,322</a>--}%
                                        <b> Password </b> <a class="pull-right" > ${user?.password} </a>
                                    </li>




                                    <li class="list-group-item">
                                        %{--<b>Followers</b> <a class="pull-right">1,322</a>--}%
                                        <g:if test="${user?.dateOfBirth}">
                                            <b> Date Of Birth </b> <a class="pull-right" > ${dateofBirth} </a>
                                        </g:if>
                                        <g:else>
                                            <b> Date Of Birth </b> <a class="pull-right" > Not entered. </a>
                                        </g:else>
                                    </li>
                                    <li class="list-group-item">
                                        %{--<b>Followers</b> <a class="pull-right">1,322</a>--}%
                                        %{--<b> Joining Date </b> <a class="pull-right" > ${user?.joiningDate}</a>--}%

                                        <g:if test="${user?.joiningDate}">
                                            <b> Joining Date </b> <a class="pull-right" >  ${joiningDate} </a>
                                        </g:if>
                                        <g:else>
                                            <b> Joining Date </b> <a class="pull-right" > Not entered. </a>
                                        </g:else>


                                    </li>

                                    <li class="list-group-item">

                                        <g:if test="${user?.designation}">
                                            <b>Designation</b> <a class="pull-right">${user?.designation}</a>
                                        </g:if>
                                        <g:else>
                                            <b>Designation</b> <a class="pull-right">Not entered.</a>
                                        </g:else>

                                    </li>
                                </ul>

                                %{--<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>--}%
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->




                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">About Me</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <strong><i class="fa fa-book margin-r-5"></i> Education</strong>

                                <g:if test="${user?.education}">
                                    <p class="text-muted">${user?.education}</p>
                                </g:if>
                                <g:else>
                                    <p class="text-muted">Not entered.</p>
                                </g:else>

                                <hr>

                                <strong><i class="fa fa-map-marker margin-r-5"></i>Permanent Address</strong>
                                <g:if test="${user?.permanentAddress}">
                                    <p class="text-muted">${user?.permanentAddress}</p>
                                </g:if>
                                <g:else>
                                    <p class="text-muted">Not entered.</p>
                                </g:else>


                                  <hr>

                                <strong><i class="fa fa-map-marker margin-r-5"></i>Current Address</strong>

                                <g:if test="${user?.presentAddress}">
                                    <p class="text-muted">${user?.presentAddress}</p>
                                </g:if>
                                <g:else>
                                    <p class="text-muted">Not entered.</p>
                                </g:else>


                                <hr>

                                <strong><i class="fa fa-file-text-o margin-r-5"></i> Short Note About Me </strong>
                                <g:if test="${user?.aboutUser}">
                                    <p class="text-muted">${user?.aboutUser}</p>
                                </g:if>
                                <g:else>
                                    <p class="text-muted">Not entered</p>
                                </g:else>

                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>



                </div>
                    <div class="col-md-2"></div>





                </div>


        </section>

    </div>
    <g:render template="footerForAdminLteTemplate"></g:render>

    <!-- /.content-wrapper -->
    %{--<footer class="main-footer">--}%
        %{--<div class="pull-right hidden-xs">--}%
            %{--<b>Version</b> 2.3.8--}%
        %{--</div>--}%
        %{--<strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights--}%
    %{--reserved.--}%
    %{--</footer>--}%

    %{--<!-- Control Sidebar -->--}%
    %{--<aside class="control-sidebar control-sidebar-dark">--}%
        %{--<!-- Create the tabs -->--}%
        %{--<ul class="nav nav-tabs nav-justified control-sidebar-tabs">--}%
            %{--<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>--}%
            %{--<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>--}%
        %{--</ul>--}%
        %{--<!-- Tab panes -->--}%
        %{--<div class="tab-content">--}%
            %{--<!-- Home tab content -->--}%
            %{--<div class="tab-pane" id="control-sidebar-home-tab">--}%
                %{--<h3 class="control-sidebar-heading">Recent Activity</h3>--}%
                %{--<ul class="control-sidebar-menu">--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<i class="menu-icon fa fa-birthday-cake bg-red"></i>--}%

                            %{--<div class="menu-info">--}%
                                %{--<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>--}%

                                %{--<p>Will be 23 on April 24th</p>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<i class="menu-icon fa fa-user bg-yellow"></i>--}%

                            %{--<div class="menu-info">--}%
                                %{--<h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>--}%

                                %{--<p>New phone +1(800)555-1234</p>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<i class="menu-icon fa fa-envelope-o bg-light-blue"></i>--}%

                            %{--<div class="menu-info">--}%
                                %{--<h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>--}%

                                %{--<p>nora@example.com</p>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<i class="menu-icon fa fa-file-code-o bg-green"></i>--}%

                            %{--<div class="menu-info">--}%
                                %{--<h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>--}%

                                %{--<p>Execution time 5 seconds</p>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                %{--</ul>--}%
                %{--<!-- /.control-sidebar-menu -->--}%

                %{--<h3 class="control-sidebar-heading">Tasks Progress</h3>--}%
                %{--<ul class="control-sidebar-menu">--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<h4 class="control-sidebar-subheading">--}%
                                %{--Custom Template Design--}%
                                %{--<span class="label label-danger pull-right">70%</span>--}%
                            %{--</h4>--}%

                            %{--<div class="progress progress-xxs">--}%
                                %{--<div class="progress-bar progress-bar-danger" style="width: 70%"></div>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<h4 class="control-sidebar-subheading">--}%
                                %{--Update Resume--}%
                                %{--<span class="label label-success pull-right">95%</span>--}%
                            %{--</h4>--}%

                            %{--<div class="progress progress-xxs">--}%
                                %{--<div class="progress-bar progress-bar-success" style="width: 95%"></div>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<h4 class="control-sidebar-subheading">--}%
                                %{--Laravel Integration--}%
                                %{--<span class="label label-warning pull-right">50%</span>--}%
                            %{--</h4>--}%

                            %{--<div class="progress progress-xxs">--}%
                                %{--<div class="progress-bar progress-bar-warning" style="width: 50%"></div>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<a href="javascript:void(0)">--}%
                            %{--<h4 class="control-sidebar-subheading">--}%
                                %{--Back End Framework--}%
                                %{--<span class="label label-primary pull-right">68%</span>--}%
                            %{--</h4>--}%

                            %{--<div class="progress progress-xxs">--}%
                                %{--<div class="progress-bar progress-bar-primary" style="width: 68%"></div>--}%
                            %{--</div>--}%
                        %{--</a>--}%
                    %{--</li>--}%
                %{--</ul>--}%
                %{--<!-- /.control-sidebar-menu -->--}%

            %{--</div>--}%
            %{--<!-- /.tab-pane -->--}%
            %{--<!-- Stats tab content -->--}%
            %{--<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>--}%
            %{--<!-- /.tab-pane -->--}%
            %{--<!-- Settings tab content -->--}%
            %{--<div class="tab-pane" id="control-sidebar-settings-tab">--}%
                %{--<form method="post">--}%
                    %{--<h3 class="control-sidebar-heading">General Settings</h3>--}%

                    %{--<div class="form-group">--}%
                        %{--<label class="control-sidebar-subheading">--}%
                            %{--Report panel usage--}%
                            %{--<input type="checkbox" class="pull-right" checked>--}%
                        %{--</label>--}%

                        %{--<p>--}%
                            %{--Some information about this general settings option--}%
                        %{--</p>--}%
                    %{--</div>--}%
                    %{--<!-- /.form-group -->--}%

                    %{--<div class="form-group">--}%
                        %{--<label class="control-sidebar-subheading">--}%
                            %{--Allow mail redirect--}%
                            %{--<input type="checkbox" class="pull-right" checked>--}%
                        %{--</label>--}%

                        %{--<p>--}%
                            %{--Other sets of options are available--}%
                        %{--</p>--}%
                    %{--</div>--}%
                    %{--<!-- /.form-group -->--}%

                    %{--<div class="form-group">--}%
                        %{--<label class="control-sidebar-subheading">--}%
                            %{--Expose author name in posts--}%
                            %{--<input type="checkbox" class="pull-right" checked>--}%
                        %{--</label>--}%

                        %{--<p>--}%
                            %{--Allow the user to show his name in blog posts--}%
                        %{--</p>--}%
                    %{--</div>--}%
                    %{--<!-- /.form-group -->--}%

                    %{--<h3 class="control-sidebar-heading">Chat Settings</h3>--}%

                    %{--<div class="form-group">--}%
                        %{--<label class="control-sidebar-subheading">--}%
                            %{--Show me as online--}%
                            %{--<input type="checkbox" class="pull-right" checked>--}%
                        %{--</label>--}%
                    %{--</div>--}%
                    %{--<!-- /.form-group -->--}%

                    %{--<div class="form-group">--}%
                        %{--<label class="control-sidebar-subheading">--}%
                            %{--Turn off notifications--}%
                            %{--<input type="checkbox" class="pull-right">--}%
                        %{--</label>--}%
                    %{--</div>--}%
                    %{--<!-- /.form-group -->--}%

                    %{--<div class="form-group">--}%
                        %{--<label class="control-sidebar-subheading">--}%
                            %{--Delete chat history--}%
                            %{--<a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>--}%
                        %{--</label>--}%
                    %{--</div>--}%
                    %{--<!-- /.form-group -->--}%
                %{--</form>--}%
            %{--</div>--}%
            %{--<!-- /.tab-pane -->--}%
        %{--</div>--}%
    %{--</aside>--}%
    %{--<!-- /.control-sidebar -->--}%
    %{--<!-- Add the sidebar's background. This div must be placed--}%
       %{--immediately after the control sidebar -->--}%
    %{--<div class="control-sidebar-bg"></div>--}%
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
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
        //Initialize Select2 Elements
        $(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function (start, end) {
                $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
        );

        //Date picker
        $('#datepicker').datepicker({
            autoclose: true
        });

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
            checkboxClass: 'icheckbox_minimal-red',
            radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
            checkboxClass: 'icheckbox_flat-green',
            radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
            showInputs: false
        });
    });
</script>
</body>
</html>
