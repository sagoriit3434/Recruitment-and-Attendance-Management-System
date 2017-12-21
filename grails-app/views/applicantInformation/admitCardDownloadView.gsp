<!DOCTYPE html>

<head>
    <title>HRMS</title>
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

        var doc = new jsPDF();
        var specialElementHandlers = {
            '#editor': function (element, renderer) {
                return true;
            }
        };

        $('#cmd').click(function () {
            doc.fromHTML($('#content').html(), 15, 15, {
                'width': 170,
                'elementHandlers': specialElementHandlers
            });
            doc.save('sample-file.pdf');
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

    #img-upload1{
        width: 300px;
        height: 50px;
    }
    table, th, td {
        border: 1px solid black;
    }

    </style>




</head>
<body>



<nav id="main-nav" role="navigation">
    <!-- Sample menu definition -->
    <ul id="main-menu" class="sm sm-blue">
        <li><a href="http://www.smartmenus.org/">Home</a></li>
        <li><a href="http://www.smartmenus.org/about/">About</a>
            <ul>
                <li><a href="http://www.smartmenus.org/about/introduction-to-smartmenus-jquery/">Introduction to SmartMenus jQuery</a></li>
                <li><a href="http://www.smartmenus.org/about/themes/">Demos + themes</a></li>
                <li><a href="http://vadikom.com/about/#vasil-dinkov">The author</a></li>
                <li><a href="http://www.smartmenus.org/about/vadikom/">The company</a>
                    <ul>
                        <li><a href="http://vadikom.com/about/">About Vadikom</a></li>
                        <li><a href="http://vadikom.com/projects/">Projects</a></li>
                        <li><a href="http://vadikom.com/services/">Services</a></li>
                        <li><a href="http://www.smartmenus.org/about/vadikom/privacy-policy/">Privacy policy</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="http://www.smartmenus.org/download/">Download</a></li>
        <li><a href="http://www.smartmenus.org/support/">Support</a>
            <ul>
                <li><a href="http://www.smartmenus.org/support/premium-support/">Premium support</a></li>
                <li><a href="http://www.smartmenus.org/support/forums/">Forums</a></li>
            </ul>
        </li>
        <li><a href="http://www.smartmenus.org/docs/">Docs</a></li>
        <li><a href="#">Sub test</a>
            <ul>
                <li><a href="#">Dummy item</a></li>
                <li><a href="#">Dummy item</a></li>
                <li><a href="#" class="disabled">Disabled menu item</a></li>
                <li><a href="#">Dummy item</a></li>
                <li><a href="#">more...</a>
                    <ul>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">more...</a>
                            <ul>
                                <li><a href="#">Dummy item</a></li>
                                <li><a href="#" class="current">A 'current' class item</a></li>
                                <li><a href="#">Dummy item</a></li>
                                <li><a href="#">more...</a>
                                    <ul>
                                        <li><a href="#">subMenusMinWidth</a></li>
                                        <li><a href="#">10em</a></li>
                                        <li><a href="#">forced.</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Dummy item</a></li>
                                <li><a href="#">Dummy item</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">A pretty long text to test the default subMenusMaxWidth:20em setting for the sub menus</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                        <li><a href="#">Dummy item</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#">Job Offers </a>
            <ul class="mega-menu">

                <li>
                    <g:link controller="user" action="viewAvailAbleJobs"> Available Jobs </g:link>
                </li>
                <li> View / Update CV </li>

            </ul>
        </li>
        <li>
            <g:link controller="user" action="createUser"> Create User  </g:link>
        </li>

        <li>
            <g:link controller="user" action="signIn"> Sign In   </g:link>
        </li>

        <li>
            <g:link controller="applicantInformation" action="admitCardDownloadView"> Admit In   </g:link>
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
    <h3 align="center"> Your Admit Card  </h3>
    <div class="row">
        <div class="col-md-12">

            <div class="col-md-1"></div>
            <div class="col-md-10">
                <button type="submit" name="search"  class="btn btn-sm btn-danger pull-right" onclick="HTMLtoPDF()"><i
                        class="fa fa-download"></i> Download </button>

                <br>
                <br>
                <br>
                <br>
            </div>
            <div class="col-md-1"></div>

        </div>
    </div>


    <div class="row">
        <div class="col-md-12">

            <div class="col-md-1"></div>
            <div class="col-md-10">
            <!-- Profile Image -->

                    <div class="box box-primary" >


                        <div class="box-body box-profile" id="HTMLtoPDF">
                            <div class="box-header with-border">
                                <h1 align="center">Admit Card</h1>

                        </div>

                        <div class="col-md-12">
                                <div class="col-md-4">
                                    <div class="col-md-12">
                                         <b style="font:15px arial, sans-serif; color: black; font-weight: bold">Name </b>
                                         <br>
                                         <br>
                                    </div>
                                    <div class="col-md-12">
                                         <strong style="font:15px arial, sans-serif; color: black; font-weight: bold">Registration No</strong>
                                    </div>

                                </div>


                                <div class="col-md-4">
                                    <div class="col-md-2"> <b  style="font:15px arial, sans-serif; color: black; font-weight: bold">:</b> </div>
                                    <div class="col-md-10">
                                        <b style="font:15px arial, sans-serif; color: black; font-weight: bold"> ${applicantInformationInstance?.applicantName} </b>
                                        <br>
                                        <br>
                                    </div>
                                    <div class="col-md-2"> <b  style="font:15px arial, sans-serif; color: black; font-weight: bold">:</b> </div>
                                    <div class="col-md-10">
                                        <b style="font:15px arial, sans-serif; color: black; font-weight: bold"> ${applicantInformationInstance?.serialNo} </b>
                                    </div>


                                </div>
                                <div class="col-md-4">
                                    <img id='img-upload' src="${request.contextPath}/commonAjax/downloadDoc?moduleName=applicant_Information&subModuleName=applicant_Image&fileName=${applicantInformationInstance?.imagePath}" alt="User profile picture"/>


                             </div>
                            <br>
                            <br>
                            <br>


                        </div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>
                            <div class="col-md-12"></div>




                                <div class="col-md-12">
                                    <table>
                                    <tr>
                                        <th style="width: 30%; height: 45px; font:12px arial, sans-serif; color: black; font-weight: bold; text-align: center">Exam Date</th>
                                        <th style="width: 30%; height: 45px; font:12px arial, sans-serif; color: black; font-weight: bold; text-align: center">Exam Time</th>
                                        <th style="width: 30%; height: 45px; font:12px arial, sans-serif; color: black; font-weight: bold; text-align: center">Exam Center</th>
                                    </tr>

                                    <tr>
                                        <td style="width: 30%; height: 60px; font:12px arial, sans-serif; color: black; text-align: center">${examDate}</td>
                                        <td style="width: 30%; height: 60px; font:12px arial, sans-serif; color: black; text-align: center">${applicantInformationInstance?.recruitmentDetails?.examTime}</td>
                                        <td style="width: 30%; height: 60px; font:12px arial, sans-serif; color: black; text-align: center">${applicantInformationInstance?.examCenter}</td>
                                    </tr>
                                </table>

                                </div>


<div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>




    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>




    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>                            <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>




    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>




    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>



    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
    <div class="col-md-12"></div>
</div>





                            <div class="col-md-12">
                                <div class="col-md-4"></div>
                                <div class="col-md-4"></div>
                                <div class="col-md-4" align="right">
                                    <div class="col-md-12">
                                        <img id='img-upload1' src="${resource(dir: "dist/img", file: "signature.jpg")}" alt="No default image found" align="right"/>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                    </div>
                                    <div class="col-md-12">
                                        <b>Signature of Superintendent</b>

                                    </div>
                                </div>
                            </div>





                            </div>
















            <!-- /.box -->
            </div>
            <div class="col-md-1"></div>




        </div>


    </div>
    </div>




</section>

<script type="text/javascript" src="${resource(dir: "js", file: "jquery-1.11.1.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "jspdf.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "jquery-2.1.3.js")}"></script>
<script type="text/javascript" src="${resource(dir: "js", file: "pdfFromHTML.js")}"></script>



</body>
</html>




