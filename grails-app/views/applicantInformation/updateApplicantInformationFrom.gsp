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

        $(document).ready(function(){

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

    <script type="text/javascript" src="${resource(dir: "bootstrap/js", file: "bootstrap.min.js")}"></script>
    <script type="text/javascript" src="${resource(dir: "plugins1/datepicker", file: "bootstrap-datepicker.js")}"></script>





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

            $(document).on('change', '.btn-file :file', function() {
                var input = $(this),
                    label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
                input.trigger('fileselect', [label]);
            });

            $('.btn-file :file').on('fileselect', function(event, label) {

                var input = $(this).parents('.input-group').find(':text'),
                    log = label;

                if( input.length ) {
                    input.val(log);
                } else {
                    if( log ) alert(log);
                }

            });
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#img-upload').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#imgInp").change(function(){
                readURL(this);
            });
        });

        function checkNumberAndDigitForHonors(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#portionAfterDecimalPartForHonorsCGPA").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForHonorsCGPA").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 2){
                    $("#portionAfterDecimalPartForHonorsCGPA").css("border", "1px solid green");
                    $("#someHiddenDivportionAfterDecimalPartForHonorsCGPA").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 2){
                    $("#portionAfterDecimalPartForHonorsCGPA").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForHonorsCGPA").html("<p style='color' : red'> Input shoild not exceed two digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#portionAfterDecimalPartForHonorsCGPA").css("border", "1px solid black");
                    $("#someHiddenDivportionAfterDecimalPartForHonorsCGPA").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#portionAfterDecimalPartForHonorsCGPA").css("border", "1px solid black");
                $("#someHiddenDivportionAfterDecimalPartForHonorsCGPA").html("<p></p> ").show();

            }
        }


        function checkNumberAndDigitForMS(input){
            document.getElementById("submitButton").disabled = false;

            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#portionAfterDecimalPartForMsCGPA").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForMsCGPA").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 2){
                    $("#portionAfterDecimalPartForMsCGPA").css("border", "1px solid green");
                    $("#someHiddenDivportionAfterDecimalPartForMsCGPA").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 2){
                    $("#portionAfterDecimalPartForMsCGPA").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForMsCGPA").html("<p style='color' : red'> Input shoild not exceed two digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#portionAfterDecimalPartForMsCGPA").css("border", "1px solid black");
                    $("#someHiddenDivportionAfterDecimalPartForMsCGPA").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#portionAfterDecimalPartForMsCGPA").css("border", "1px solid black");
                $("#someHiddenDivportionAfterDecimalPartForMsCGPA").html("<p></p> ").show();

            }
        }




        function checkNumberAndDigitForSSC(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#portionAfterDecimalPartForSSC").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForSSC").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 2){
                    $("#portionAfterDecimalPartForSSC").css("border", "1px solid green");
                    $("#someHiddenDivportionAfterDecimalPartForSSC").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 2){
                    $("#portionAfterDecimalPartForSSC").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForSSC").html("<p style='color' : red'> Input shoild not exceed two digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#portionAfterDecimalPartForSSC").css("border", "1px solid black");
                    $("#someHiddenDivportionAfterDecimalPartForSSC").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#portionAfterDecimalPartForSSC").css("border", "1px solid black");
                $("#someHiddenDivportionAfterDecimalPartForSSC").html("<p></p> ").show();

            }
        }


        function checkNumberAndDigitForHSC(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#portionAfterDecimalPartForHSC").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForHSC").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 2){
                    $("#portionAfterDecimalPartForHSC").css("border", "1px solid green");
                    $("#someHiddenDivportionAfterDecimalPartForHSC").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 2){
                    $("#portionAfterDecimalPartForHSC").css("border", "1px solid red");
                    $("#someHiddenDivportionAfterDecimalPartForHSC").html("<p style='color' : red'> Input shoild not exceed two digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#portionAfterDecimalPartForHSC").css("border", "1px solid black");
                    $("#someHiddenDivportionAfterDecimalPartForHSC").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#portionAfterDecimalPartForHSC").css("border", "1px solid black");
                $("#someHiddenDivportionAfterDecimalPartForHSC").html("<p></p> ").show();

            }
        }

        function passingYearValidateForSSC(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#schoolPassingYear").css("border", "1px solid red");
                    $("#someHiddenDivForSchoolPassingYear").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 4){
                    $("#schoolPassingYear").css("border", "1px solid green");
                    $("#someHiddenDivForSchoolPassingYear").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 4){
                    $("#schoolPassingYear").css("border", "1px solid red");
                    $("#someHiddenDivForSchoolPassingYear").html("<p style='color' : red'> Input shoild not exceed four digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#schoolPassingYear").css("border", "1px solid black");
                    $("#someHiddenDivForSchoolPassingYear").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#schoolPassingYear").css("border", "1px solid black");
                $("#someHiddenDivForSchoolPassingYear").html("<p></p> ").show();

            }
        }


        function passingYearValidateForHSC(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#collegePassingYear").css("border", "1px solid red");
                    $("#someHiddenDivForCollegePassingYear").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 4){
                    $("#collegePassingYear").css("border", "1px solid green");
                    $("#someHiddenDivForCollegePassingYear").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 4){
                    $("#collegePassingYear").css("border", "1px solid red");
                    $("#someHiddenDivForCollegePassingYear").html("<p style='color' : red'> Input shoild not exceed four digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#collegePassingYear").css("border", "1px solid black");
                    $("#someHiddenDivForCollegePassingYear").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#collegePassingYear").css("border", "1px solid black");
                $("#someHiddenDivForCollegePassingYear").html("<p></p> ").show();

            }
        }



        function passingYearValidateForHonors(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#uniPassingYearForHonors").css("border", "1px solid red");
                    $("#someHiddenDivForUniPassingYearForHonors").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 4){
                    $("#uniPassingYearForHonors").css("border", "1px solid green");
                    $("#someHiddenDivForUniPassingYearForHonors").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 4){
                    $("#uniPassingYearForHonors").css("border", "1px solid red");
                    $("#someHiddenDivForUniPassingYearForHonors").html("<p style='color' : red'> Input shoild not exceed four digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#uniPassingYearForHonors").css("border", "1px solid black");
                    $("#someHiddenDivForUniPassingYearForHonors").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#uniPassingYearForHonors").css("border", "1px solid black");
                $("#someHiddenDivForUniPassingYearForHonors").html("<p></p> ").show();

            }
        }




        function passingYearValidateForMS(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#uniPassingYearForMs").css("border", "1px solid red");
                    $("#someHiddenDivForUniPassingYearForMs").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 4){
                    $("#uniPassingYearForMs").css("border", "1px solid green");
                    $("#someHiddenDivForUniPassingYearForMs").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 4){
                    $("#uniPassingYearForMs").css("border", "1px solid red");
                    $("#someHiddenDivForUniPassingYearForMs").html("<p style='color' : red'> Input shoild not exceed four digit.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }
                else{
                    $("#uniPassingYearForMs").css("border", "1px solid black");
                    $("#someHiddenDivForUniPassingYearForMs").html("<p></p> ").show();
                    document.getElementById("submitButton").disabled = true;


                }

            }else{
                $("#uniPassingYearForMs").css("border", "1px solid black");
                $("#someHiddenDivForUniPassingYearForMs").html("<p></p> ").show();

            }
        }


        function validateExperience(input){
            document.getElementById("submitButton").disabled = false;


            if(input.length > 0 ){
                var x = parseInt(input);

                if(x.toString() == "NaN" || input.length > x.toString().length){
                    $("#validateExperience").css("border", "1px solid red");
                    $("#someHiddenDivForExperienceYears").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                    return;
                }

                if(input.length == 1 || input.length == 2){

                    $("#validateExperience").css("border", "1px solid green");
                    $("#someHiddenDivForExperienceYears").html("<p style='color' : blue'> Ok </p> ").show();
                    return;
                }

                if(input.length > 2){
                    $("#validateExperience").css("border", "1px solid red");
                    $("#someHiddenDivForExperienceYears").html("<p style='color' : red'> Invalid Input.</p> ").show();
                    document.getElementById("submitButton").disabled = true;

                }


            }else{
                $("#validateExperience").css("border", "1px solid black");
                $("#someHiddenDivForExperienceYears").html("<p></p> ").show();

            }
        }




        function validateEmail(emailField){
            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

            if (reg.test(emailField.value) == false)
            {
                $("#emailAddressValidate").css("border", "1px solid red");
                $("#someHiddenDivForEmailAddressValidate").html("<p style='color' : red'> Invalid Email Address </p> ").show();
                document.getElementById("submitButton").disabled = true;

                return false;
            }

            $("#emailAddressValidate").css("border", "1px solid green");
            $("#someHiddenDivForEmailAddressValidate").html("<p style='color' : green'> OK </p> ").show();
            document.getElementById("submitButton").disabled = false;


            return true;

        }





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
    <h3 align="center"> Fill Up The From  </h3>

    <div class="row">
        <div class="col-md-12">

            <div class="col-md-1"></div>
            <div class="col-md-10">
            <!-- Profile Image -->
                <g:form url="[resource: applicantInformationInstance, action: 'updateApplicantInformation']" method="POST" enctype="multipart/form-data">

                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Personal Information </h3>
                            </div>
                            <g:render template="applicantIformation" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>

                            %{--<input type="hidden" name="recruitmentDetails" value="${applicantInformationInstance?.recruitmentDetailsInstance?.id}">--}%

                            <input type="hidden" name="recruitmentDetails" value="${recruitmentDetails}">
                            <input type="hidden" name="discardIndicator" value="${false}">
                            <input type="hidden" name="approveIndicator" value="${false}">
                        </div>


                    </div>

                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Educational Information </h3>
                            </div>
                            <g:render template="applicantEducationalIformation" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>


                        </div>

                    </div>


                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Experience Information </h3>
                            </div>
                            <g:render template="applicantExperienceIformation" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>


                        </div>

                    </div>






                    <div class="box box-primary">


                        <div class="box-body box-profile">
                            <div class="box-header with-border">
                                <h3 align="center">Skill Information </h3>
                            </div>
                            <g:render template="applicantSkillIformation" model="${[applicantInformationInstance : applicantInformationInstance]}"></g:render>


                        </div>

                        <div class="box-footer">
                            <fieldset class="buttons">
                                <button type="submit" id="submitButton" class="btn btn-primary pull-right"><i class="fa fa-save"></i> ${message(code: "default.button.create.label1", default: "Update")}</button>
                            </fieldset>
                        </div><!-- /.box-footer -->

                    </div>




                </g:form>

            <!-- /.box -->
            </div>
            <div class="col-md-1"></div>




        </div>


    </div>




</section>



</body>
</html>




