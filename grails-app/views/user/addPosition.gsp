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


                        <g:form url="[action: 'saveAvailAblePosition']" method="POST" enctype="multipart/form-data">
                            <div class="box-body">


                                <input type="hidden" name="userId" value="${user?.id}">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 style="text-align: center; color: blue">Add Position</h3>

                                    </div>

                                        <div class="box-body box-profile">

                                            <div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'positionName', 'error')} required">
                                                <label for="positionName">
                                                    <g:message code="position.positionName.label" default="Position Name" />
                                                    <span class="required-indicator">*</span>
                                                </label>
                                                <g:textField name="positionName" required="" value="${positionInstance?.positionName}" class="form-control" onblur="checkAvailAvalityOfPosition(this.value)"/>
                                                <span id="someHiddenDivportionForPosition" style="display: none;color : mediumseagreen"></span>


                                            </div>

                                            <br>

                                            <div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'positionDetails', 'error')} ">
                                                <label for="positionDetails">
                                                    <g:message code="position.positionDetails.label" default="Position Details" />

                                                </label>

                                                <g:textArea name="positionDetails" value="${positionInstance?.positionDetails}" class="form-control" rows="3"/>

                                            </div>


                                    </div>
                                    <!-- /.box-body -->
                                </div>

                            </div><!-- /.box-body -->
                            <div class="box-footer">
                                <fieldset class="buttons">
                                    <button type="submit" id="submitButton" class="btn btn-primary pull-right"><i class="fa fa-save"></i> ${message(code: "default.button.create.label1", default: "Add")}</button>
                                    %{--<button type="reset" class="btn btn-warning pull-right" onclick="return confirm('${message(code: "default.message.reset.label", default: "Sure, you want to reset all value...?")}');"><i class="fa fa-refresh"></i> ${message(code: "default.button.reset.label", default: "Reset")}</button>--}%
                                </fieldset>
                            </div><!-- /.box-footer -->
                        </g:form>

                    </div>



                </div>
                <div class="col-md-2"></div>





            </div>


        </section>

    </div>
    <!-- /.content-wrapper -->
    <g:render template="footerForAdminLteTemplate"></g:render>

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

    function checkAvailAvalityOfPosition(input) {
        if(input){
            $.ajax({
                url:"${createLink(controller: 'user', action: 'checkDuplicacyOfPosition')}",
                type: 'POST',
                dataType: 'JSON',
                async: false,
                data: {input: input},
                success: function(data, textStatus){
                    if(data.availAble == true){

                        document.getElementById("submitButton").disabled = true;

                        $("#someHiddenDivportionForPosition").html("<p style='color' : red'> Already exists.</p> ").show();

                    }
                    else{
                        $("#someHiddenDivportionForPosition").html("<p style='color' : green'> OK</p> ").show();
                        document.getElementById("submitButton").disabled = false;


                    }
                }

            });

        }

    }

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
