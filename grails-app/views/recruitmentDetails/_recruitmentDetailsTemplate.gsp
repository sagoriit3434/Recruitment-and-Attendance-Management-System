<script>

    function checkAvailAvalityOfThsPost(input) {
        if(input){
            $.ajax({
                url:"${createLink(controller: 'recruitmentDetails', action: 'checkDuplicacyOfThisPost')}",
                type: 'POST',
                dataType: 'JSON',
                async: false,
                data: {input: input},
                success: function(data, textStatus){
                    if(data.availAble){
//                        document.getElementById("submitButton").disabled = true;

                        $("#someHiddenDivportionForPost").html("<p style='color' : red'> Already available a recruitment offer for your selected position.</p> ").show();



                    }
                    else{
                        $("#someHiddenDivportionForPost").html("<p style='color' : green'> OK</p> ").show();


                    }
                }

            });

        }

    }



    function checkNumberAndDigitForMinimumAge(input){
        if(input.length > 0 ){
            var x = parseInt(input);

            if(x.toString() == "NaN" || input.length > x.toString().length){
                $("#portionMinimumAge").css("border", "1px solid red");
                $("#someHiddenDivportionForMinimumAge").html("<p style='color' : red'> Invalid Input.</p> ").show();
                document.getElementById("submitButton").disabled = true;

                return;
            }

            if(parseInt(input) < 18){
                $("#portionMinimumAge").css("border", "1px solid red");
                $("#someHiddenDivportionForMinimumAge").html("<p style='color' : red'> Minimum age should be greater than or equal to 18.</p> ").show();
                document.getElementById("submitButton").disabled = true;
                return;


            }
            if(input.length == 2){
                var maxAge = parseInt($('#portionMaximumAge').val());


                if(maxAge.toString() == "NaN" || maxAge >= parseInt(input)){

                    $("#portionMinimumAge").css("border", "1px solid green");
                    $("#someHiddenDivportionForMinimumAge").html("<p style='color' : blue'> Ok </p> ").show();

                    if(maxAge.toString() != "NaN"){

                        $("#portionMaximumAge").css("border", "1px solid green");
                        $("#someHiddenDivportionForMaximumAge").html("<p style='color' : blue'> Ok </p> ").show();
                    }

                    document.getElementById("submitButton").disabled = false;

                    return;

                }

            }

            if(input.length > 2){
                $("#portionMinimumAge").css("border", "1px solid red");
                $("#someHiddenDivportionForMinimumAge").html("<p style='color' : red'> Input shoild not exceed two digit.</p> ").show();
                document.getElementById("submitButton").disabled = true;
                return;

            }
            else{
                $("#portionMinimumAge").css("border", "1px solid black");
                $("#someHiddenDivportionForMinimumAge").html("<p></p> ").show();
                document.getElementById("submitButton").disabled = true;
                return;


            }

        }else{
            $("#portionMinimumAge").css("border", "1px solid black");
            $("#someHiddenDivportionAfterDecimalPartForSSC").html("<p></p> ").show();
            document.getElementById("submitButton").disabled = true;
            return;


        }
    }

    function checkNumberAndDigitForMaximumAge(input){


        document.getElementById("submitButton").disabled = false;
//        alert(input);



        if(input.length > 0 ){
            var x = parseInt(input);


            if(x.toString() == "NaN" || input.length > x.toString().length){
                $("#portionMaximumAge").css("border", "1px solid red");
                $("#someHiddenDivportionForMaximumAge").html("<p style='color' : red'> Invalid Input.</p> ").show();
                document.getElementById("submitButton").disabled = true;

                return;
            }


            if(input.length == 2){


                $("#portionMaximumAge").css("border", "1px solid green");


                var minAge = parseInt($('#portionMinimumAge').val());


                if(minAge <= x && minAge >= 18){
                    $("#someHiddenDivportionForMaximumAge").html("<p style='color' : blue'> Ok </p> ").show();
                    document.getElementById("submitButton").disabled = false;

                    return;
                }else{
                    $("#portionMaximumAge").css("border", "1px solid red");
                    $("#someHiddenDivportionForMinimumAge").html("<p style='color' : red'> Max age should be greater or equal min age.</p> ").show();
                    document.getElementById("submitButton").disabled = true;
                    return
                }


            }

            if(input.length > 2){
                $("#portionMaximumAge").css("border", "1px solid red");
                $("#someHiddenDivportionForMinimumAge").html("<p style='color' : red'> Input shoild not exceed two digit.</p> ").show();
                document.getElementById("submitButton").disabled = true;
                return;

            }
            else{
                $("#portionMaximumAge").css("border", "1px solid black");
                $("#someHiddenDivportionForMaximumAge").html("<p></p> ").show();
                document.getElementById("submitButton").disabled = true;
                return;


            }

        }else{
            $("#portionMaximumAge").css("border", "1px solid black");
            $("#someHiddenDivportionForMaximumAge").html("<p></p> ").show();
            document.getElementById("submitButton").disabled = true;
            return;


        }
    }

    function checkNumberAndDigitForExamMins(input){


        document.getElementById("submitButton").disabled = false;
//        alert(input);



        if(input.length > 0 ){
            var x = parseInt(input);

            if(input.toString() == "00"){
                $("#portionAfterDecimalPartForExamMins").css("border", "1px solid green");
                $("#someHiddenDivportionForExamMins").html("<p style='color' : blue'> Ok </p> ").show();
                document.getElementById("submitButton").disabled = false;
                return



            }


            if(x.toString() == "NaN" || input.length > x.toString().length){
                $("#portionAfterDecimalPartForExamMins").css("border", "1px solid red");
                $("#someHiddenDivportionForExamMins").html("<p style='color' : red'> Invalid Input.</p> ").show();
                document.getElementById("submitButton").disabled = true;

                return;
            }


            if(input.length == 2){

                $("#portionAfterDecimalPartForExamMins").css("border", "1px solid green");
                $("#someHiddenDivportionForExamMins").html("<p style='color' : blue'> Ok </p> ").show();
                return;


            }

            if(input.length > 2){
                $("#portionAfterDecimalPartForExamMins").css("border", "1px solid red");
                $("#someHiddenDivportionForExamMins").html("<p style='color' : red'> Input shoild not exceed two digit.</p> ").show();
                document.getElementById("submitButton").disabled = true;

            }
            else{
                $("#portionAfterDecimalPartForExamMins").css("border", "1px solid black");
                $("#someHiddenDivportionForExamMins").html("<p></p> ").show();
                document.getElementById("submitButton").disabled = true;


            }

        }else{
            $("#portionAfterDecimalPartForExamMins").css("border", "1px solid black");
            $("#someHiddenDivportionForExamMins").html("<p></p> ").show();
            document.getElementById("submitButton").disabled = true;


        }
    }

    function checkExamDate(input) {
        alert("dd");
        alert(input);

    }




</script>

<div class="box box-primary">
    <div class="box-body box-profile">


        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'numberOfVacancy', 'error')} required">
            <div class="row">
                <div class="col-md-12">
                    <label for="numberOfVacancy">
                        <g:message code="recruitmentDetails.numberOfVacancy.label" default="Number Of Vacancy" />
                        <span class="required-indicator">*</span>
                    </label>

                </div>

            </div>

            <div class="row">
                <div class="col-md-12">
                    <g:field name="numberOfVacancy" type="number" value="${recruitmentDetailsInstance.numberOfVacancy}" required="" class="form-control"/>
                    <br>


                </div>

            </div>




        </div>


        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'position', 'error')} required">
            <div class="row">
                <div class="col-md-12">
                    <label for="position">
                        <g:message code="recruitmentDetails.position.label" default="Position" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>

            </div>

            <div class="row">
                <div class="col-md-12">

                    %{--<g:select name="position" from="${hrms.AvailAblePosition?.values()}" keys="${hrms.AvailAblePosition.values()*.name()}" required="" value="${recruitmentDetailsInstance?.position?.name()}" noSelection="${[ '':'Select one']}" class="form-control" onchange="checkAvailAvalityOfThsPost(this.value)"/>--}%
                    <g:select id="position" name="position.id" from="${hrms.Position.list()}" optionKey="id" optionValue="positionName" required="" value="${recruitmentDetailsInstance?.position?.id}" noSelection="${[ '':'Select one']}" onblur="checkAvailAvalityOfThsPost(this.value)"  class="many-to-one form-control"/>

                    <span id="someHiddenDivportionForPost" style="display: none;color : mediumseagreen"></span>

                    <br>

                </div>

            </div>




        </div>



        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'age', 'error')} required">
            <div class="row">
                <div class="col-md-12">
                    <label for="age">
                        <g:message code="recruitmentDetails.age.label" default="Age" />
                        <span class="required-indicator">*</span>
                    </label>


                </div>

            </div>

            <div class="row">
                <div class="col-md-6">
                    <g:if test="${minAge}">
                        <g:textField name="minimumAge" class="form-control" onblur="checkNumberAndDigitForMinimumAge(this.value)" id="portionMinimumAge" placeholder="Minimum Age" value="${minAge}" ></g:textField>

                    </g:if>

                    <g:else>
                        <g:textField name="minimumAge" class="form-control" onblur="checkNumberAndDigitForMinimumAge(this.value)" id="portionMinimumAge" placeholder="Minimum Age"  ></g:textField>
                        <span id="someHiddenDivportionForMinimumAge" style="display: none;color : mediumseagreen"></span>
                    </g:else>

                </div>


                <div class="col-md-6">
                    <g:if test="${maxAge}">
                        <g:textField name="maximumAge"  class="form-control" onblur="checkNumberAndDigitForMaximumAge(this.value)" id="portionMaximumAge" placeholder="Maximum Age" value="${maxAge}" ></g:textField>

                    </g:if>
                    <g:else>
                        <g:textField name="maximumAge" class="form-control" onblur="checkNumberAndDigitForMaximumAge(this.value)" id="portionMaximumAge" placeholder="Maximum Age"></g:textField>
                        <span id="someHiddenDivportionForMaximumAge" style="display: none;color : mediumseagreen"></span>
                    </g:else>



                    <br>

                </div>

            </div>


        </div>


        <div class="row">
            <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'lastDateForApply', 'error')} required">
                <div class="col-md-6">
                    <label for="lastDateForApply">
                        <g:message code="recruitmentDetails.lastDateForApply.label" default="Last Day For Apply" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>
                <div class="col-md-6">
                    <label for="examDate">
                        <g:message code="recruitmentDetails.examDate.label" default="Exam Date" />
                        <span class="required-indicator">*</span>
                    </label>


                </div>




            </div>

        </div>

        <div class="row">
            <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'examDate', 'error')} required">
                <div class="col-md-6">
                    <g:datePicker name="lastDateForApply" precision="day"  value="${recruitmentDetailsInstance?.lastDateForApply}" class="form-control"/>

                </div>

                <div class="col-md-6">
                    <g:datePicker name="examDate" precision="day"  value="${recruitmentDetailsInstance?.examDate}" onblur="checkExamDate(this.value)"/>
                    <br>
                    <br>

                </div>
            </div>

        </div>

        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'examDate', 'error')} required">
            <div class="row">
                <div class="col-md-12">
                    <label for="examDate">
                        <g:message code="recruitmentDetails.examDate.label" default="Exam Time" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4">

                    <g:if test="${examHour}">
                        <g:select id="type" name='examHour' noSelection="${['':'Select One']}" from='${["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]}' class="form-control" value="${examHour}" required="required"></g:select>

                    </g:if>
                    <g:else>
                        <g:select id="type" name='examHour' noSelection="${['':'Select One']}" from='${["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]}' class="form-control" required="required"></g:select>


                    </g:else>

                </div>

                <div class="col-md-4">
                    <g:textField name="examMins" class="form-control" onblur="checkNumberAndDigitForExamMins(this.value)" id="portionAfterDecimalPartForExamMins" placeholder="00" value="${examMins}" required="required"></g:textField>
                    <span id="someHiddenDivportionForExamMins" style="display: none;color : mediumseagreen"></span>

                </div>

                <div class="col-md-4">
                    <g:if test="${examAMorPM}">
                        <g:select id="type" name='examAMorPM' noSelection="${['':'Select One']}" from='${["AM", "PM"]}' class="form-control"  required="required" value="${examAMorPM}"></g:select>


                    </g:if>
                    <g:else>
                        <g:select id="type" name='examAMorPM' noSelection="${['':'Select One']}" from='${["AM", "PM"]}' class="form-control"  required="required"></g:select>


                    </g:else>


                    <br>
                    <br>
                </div>

            </div>








        </div>




        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'jobDetails', 'error')} required">
            <div class="row">
                <div class="col-md-12">
                    <label for="jobDetails">
                        <g:message code="recruitmentDetails.jobDetails.label" default="Job Details" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <g:textArea  name="jobDetails"  required="" value="${recruitmentDetailsInstance?.jobDetails}"  rows="10" class="form-control"></g:textArea>
                    <br>
                    <br>

                </div>

            </div>




            %{--<g:textArea id="editor1" name="jobDetails"  required="" value="${recruitmentDetailsInstance?.jobDetails}"  rows="5" cols="80"></g:textArea>--}%

        </div>









        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'experience', 'error')} required">
            <div class="row">
                <div class="col-md-12">
                    <label for="experience">
                        <g:message code="recruitmentDetails.experience.label" default="Experience" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>

            </div>



            <div class="row">
                <div class="col-md-12">
                    <g:textField name="experience" required="" value="${recruitmentDetailsInstance?.experience}"  placeholder="3-4" rows="10" class="form-control"></g:textField>
                    <br>
                    <br>

                </div>

            </div>



        </div>



        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'constrains', 'error')} required">

            <div class="row">
                <div class="col-md-12">
                    <label for="constrains">
                        <g:message code="recruitmentDetails.constrains.label" default="Constrains" />
                        <span class="required-indicator">*</span>
                    </label>

                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <g:textArea name="constrains"  required="" value="${recruitmentDetailsInstance?.constrains}"  placeholder="Place some text here" rows="10" class="form-control"></g:textArea>
                    <br>
                    <br>


                </div>

            </div>




        </div>



        <div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'facilities', 'error')} required">
            <div class="row">
                <div class="col-md-12">
                    <label for="facilities">
                        <g:message code="recruitmentDetails.facilities.label" default="Facilities" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <g:textArea name="facilities"  required="" value="${recruitmentDetailsInstance?.facilities}"  placeholder="Place some text here" rows="10" class="form-control"></g:textArea>

                </div>

            </div>


        </div>



    </div>
</div>


