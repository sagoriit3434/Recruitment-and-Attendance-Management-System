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

    <g:render template="headerTemplate" model="${[user : user]}"></g:render>
    <g:render template="menuTemplate" model="${[user : user]}"></g:render>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content-header">
            <h1 style="color:blue; text-align: center">Searching Position For Rejected Applicant List</h1>
        </section><!-- /.content-header -->

    %{--<section class="flash-message">--}%
    %{--<g:render template="../layouts/flashMessage"/>--}%
    %{--</section><!--Flash Message-->--}%

        <g:form method="get" action="availAblePositionForViewingRejectedApplicantList">
            <section class="content">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="row">
                            <input type="hidden" name="userId" value="${user?.id}">


                            <div class='col-xs-12 col-sm-6 col-md-6 col-lg-6'>
                                <label><g:message code="ssmBeneficiary.programName.label1" default="Designation"/></label>
                                <g:if test="${position}">
                                    <g:select id="position" name="position" from="${hrms.Position.list()}" optionKey="id" optionValue="positionName" required="" value="${position}" noSelection="${[ '':'Select one']}"  class="many-to-one form-control"/>

                                %{--<g:select name="position" from="${hrms.AvailAblePosition?.values()}" keys="${hrms.AvailAblePosition.values()*.name()}" required="" noSelection="${["": "Select One"]}" class="form-control"  value="${position}" />--}%

                                </g:if>
                                <g:else>
                                    <g:select id="position" name="position" from="${hrms.Position.list()}" optionKey="id" optionValue="positionName" required="" value="${recruitmentDetailsInstance?.position?.id}" noSelection="${[ '':'Select one']}"  class="many-to-one form-control"/>

                                %{--<g:select name="position" from="${hrms.AvailAblePosition?.values()}" keys="${hrms.AvailAblePosition.values()*.name()}"  noSelection="${["": "Select One"]}" class="form-control"  />--}%
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





        <section class="content"><!-- Main content -->
            <g:each in="${availablerecruitmentDetailsList}" status="i" var="recruitmentDetailsInstance">
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <!-- Profile Image -->


                                    <p> Serial No : ${i+1} </p>

                                    <p> Designation : ${recruitmentDetailsInstance?.position?.positionName}</p>
                                    <p> Number Of Vacancy : ${recruitmentDetailsInstance?.numberOfVacancy}</p>
                                    <p> Exam Date : ${recruitmentDetailsInstance?.examDate}</p>
                                    <p> Last Date For Apply : ${recruitmentDetailsInstance?.lastDateForApply}</p>


                                </div>

                                <div class="col-md-3">


                                </div>








                                %{--<g:link action="ddd" target="_blank">Click Here To View Details</g:link>--}%
                                %{--<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>--}%
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->




                            <!-- /.box -->
                        </div>



                    </div>

                    <div class="box-footer">
                        <g:link class="btn btn-md btn-success pull-right" action="viewAllRejectedApplicantForARecruitDetails" id="${recruitmentDetailsInstance?.id}" params="[userId:user?.id]" target="_blank">
                            <i class="fa fa-eye" aria-hidden="true"></i>
                            <g:message code="default.button.show.label" default="View All Rejected Applicant"/>
                        </g:link>
                    </div>


                </div>


            </g:each>

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


<script>
    $(function () {

        $("#hide_show").hide();
//        $("#textarea").wysihtml5();






        $("#select_all").change(function(){  //"select all" change
            $(".checkbox").prop('checked', $(this).prop("checked")); //change all ".checkbox" checked status
            if($(this).prop("checked") == true)
                $("#hide_show").show();
            if($(this).prop("checked") == false)
                $("#hide_show").hide();

        });

//".checkbox" change
        $('.checkbox').change(function(){
            //uncheck "select all", if one of the listed checkbox item is unchecked
            if(false == $(this).prop("checked")){ //if this item is unchecked
                $("#select_all").prop('checked', false); //change "select all" checked status to false
            }
            //check "select all" if all checkbox items are checked
            if ($('.checkbox:checked').length == $('.checkbox').length ){
                $("#select_all").prop('checked', true);
            }
        });


    });

    function textArea() {
        $(".textarea").wysihtml5();


    }


    function checkMarkedOrUnmarked() {
        checkboxes = document.getElementsByClassName('checkbox');
        checker = "unchecked";
        for(var i in checkboxes){
            if(checkboxes[i].checked == true){
                $("#hide_show").show();
                checker = "checker";
                return
            }

        }

        if(checker == "unchecked"){
            $("#hide_show").hide();

        }

    }

</script>
</body>
</html>
