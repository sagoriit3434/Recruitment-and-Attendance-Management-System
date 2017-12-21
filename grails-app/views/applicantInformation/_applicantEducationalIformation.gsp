<h5 align="center" style="font:14px arial, sans-serif; color: blue"> <b> SSC Information </b> </h5>

<div class="row">

    <div class="col-md-3">



        <g:textField name="schoolName" class="form-control" placeholder="School Name" value="${applicantInformationInstance?.schoolName}" ></g:textField>

    </div>

    <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorsCGPA', 'error')} ">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorsCGPA', 'error')} ">
            <div class="col-md-1" align="right">
                <label for="sseCGPA" style="font:15px arial, sans-serif;">
                    <g:message code="applicantInformation.honorsCGPA.label" default="GPA" />

                </label>

            </div>

            <div class="col-md-2">
                <g:if test="${applicantInformationInstance?.sseCGPA}">
                    <g:select id="type" name='sscGpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4", "5"]}' class="form-control" value="${sscGpaPart1}"></g:select>

                </g:if>
                <g:else>
                    <g:select id="type" name='sscGpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4", "5"]}' class="form-control"></g:select>

                </g:else>

            </div>


            <div class="col-md-2">

                <g:if test="${applicantInformationInstance?.sseCGPA}">
                    <g:textField name="sscGpaPart2" class="form-control" onkeyup="checkNumberAndDigitForSSC(this.value)" id="portionAfterDecimalPartForSSC" placeholder="00" value="${sscGpaPart2}" ></g:textField>

                </g:if>
                <g:else>
                    <g:textField name="sscGpaPart2" class="form-control" onkeyup="checkNumberAndDigitForSSC(this.value)" id="portionAfterDecimalPartForSSC" placeholder="00" ></g:textField>
                    <span id="someHiddenDivportionAfterDecimalPartForSSC" style="display: none;color : mediumseagreen"></span>

                </g:else>



            </div>

        </div>



    </div>



    <div class="col-md-2">
        <g:select id="type" name='boardForSsc' noSelection="${['':'Board']}" from='${["Dhaka", "Rajshahi", "Dinajpur", "Jossore", "Chittagong", "Barisal", "Mymensingh"]}' class="form-control" value="${applicantInformationInstance?.boardForSsc}"></g:select>


    </div>


    <div class="col-md-2">
        <g:textField name="passingYearForSSC" id="schoolPassingYear" onkeyup="passingYearValidateForSSC(this.value)" class="form-control" placeholder="Passing Year" value="${applicantInformationInstance?.passingYearForSSC}" ></g:textField>
        <span id="someHiddenDivForSchoolPassingYear" style="display: none;color : mediumseagreen"></span>

    </div>

</div>


<br>
<br>

<h5 align="center" style="font:14px arial, sans-serif; color: blue"> <b> HSC Information </b> </h5>

<div class="row">
    <div class="col-md-3">
        <g:textField name="collegeName" class="form-control" placeholder="College Name" value="${applicantInformationInstance?.collegeName}"></g:textField>

    </div>

    <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorsCGPA', 'error')} ">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorsCGPA', 'error')} ">
            <div class="col-md-1" align="right">
                <label for="hseCGPA" style="font:15px arial, sans-serif;">
                    <g:message code="applicantInformation.honorsCGPA.label" default="GPA" />

                </label>

            </div>

            <div class="col-md-2">

                <g:if test="${applicantInformationInstance?.hseCGPA}">
                    <g:select id="type" name='hscGpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4", "5"]}' class="form-control" value="${hscGpaPart1}"></g:select>

                </g:if>
                <g:else>
                    <g:select id="type" name='hscGpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4", "5"]}' class="form-control"></g:select>

                </g:else>

            </div>


            <div class="col-md-2">
                <g:if test="${applicantInformationInstance?.hseCGPA}">
                    <g:textField name="hscGpaPart2" class="form-control" onkeyup="checkNumberAndDigitForHSC(this.value)" id="portionAfterDecimalPartForHSC" placeholder="00" value="${hscGpaPart2}"></g:textField>

                </g:if>
                <g:else>
                    <g:textField name="hscGpaPart2" class="form-control" onkeyup="checkNumberAndDigitForHSC(this.value)" id="portionAfterDecimalPartForHSC" placeholder="00" ></g:textField>
                    <span id="someHiddenDivportionAfterDecimalPartForHSC" style="display: none;color : mediumseagreen"></span>

                </g:else>
                %{--<g:textField name="cgpa2" class="form-control" placeholder="Portion after decimal point"></g:textField>--}%

            </div>









        </div>



    </div>

    <div class="col-md-2">
        <g:select id="type" name='boardForHsc' noSelection="${['':'Board']}" from='${["Dhaka", "Rajshahi", "Dinajpur", "Jossore", "Chittagong", "Barisal", "Mymensingh"]}' class="form-control" value="${applicantInformationInstance?.boardForHsc}"></g:select>


    </div>


    <div class="col-md-2">
        <g:textField name="passingYearForHsc" id="collegePassingYear" onkeyup="passingYearValidateForHSC(this.value)" class="form-control" placeholder="Passing Year" value="${applicantInformationInstance?.passingYearForHsc}"></g:textField>
        <span id="someHiddenDivForCollegePassingYear" style="display: none;color : mediumseagreen"></span>
    </div>

</div>


<br>
<br>



<h5 align="center" style="font:14px arial, sans-serif; color: blue"> <b> Honors Information </b> </h5>

<div class="row">
    <div class="col-md-3">
        <g:textField name="universityOrInstituteForHonors" class="form-control" placeholder="University/Institute" value="${applicantInformationInstance?.universityOrInstituteForHonors}"></g:textField>

    </div>
    <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorsCGPA', 'error')} ">
            <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorsCGPA', 'error')} ">
                <div class="col-md-1" align="right">
                    <label for="honorsCGPA" style="font:15px arial, sans-serif;">
                        <g:message code="applicantInformation.honorsCGPA.label" default="CGPA" />

                    </label>

                </div>

                <div class="col-md-2">

                    <g:if test="${applicantInformationInstance?.honorsCGPA}">
                        <g:select id="type" name='honorsCgpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4"]}' class="form-control" value="${honorsCgpaPart1}"></g:select>

                    </g:if>
                    <g:else>
                        <g:select id="type" name='honorsCgpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4"]}' class="form-control"></g:select>

                    </g:else>


                </div>


                <div class="col-md-2">

                    <g:if test="${applicantInformationInstance?.honorsCGPA}">
                        <g:textField name="honorsCgpaPart2" class="form-control" id="portionAfterDecimalPartForHonorsCGPA" placeholder="00" onkeyup="checkNumberAndDigitForHonors(this.value)" value="${honorsCgpaPart2}"></g:textField>

                    </g:if>
                    <g:else>
                        <g:textField name="honorsCgpaPart2" class="form-control" id="portionAfterDecimalPartForHonorsCGPA" placeholder="00" onkeyup="checkNumberAndDigitForHonors(this.value)"></g:textField>
                        <span id="someHiddenDivportionAfterDecimalPartForHonorsCGPA" style="display: none;color : mediumseagreen"></span>
                    </g:else>




                </div>

            </div>

    </div>
    <div class="col-md-2">
        <g:textField name="subjectForHonors" class="form-control" placeholder="Subject" value="${applicantInformationInstance?.subjectForHonors}"></g:textField>
    </div>
    <div class="col-md-2">
        <g:textField name="durationForHonors" id="uniPassingYearForHonors" onkeyup="passingYearValidateForHonors(this.value)" class="form-control" placeholder="Passing Year" value="${applicantInformationInstance?.durationForHonors}"></g:textField>
        <span id="someHiddenDivForUniPassingYearForHonors" style="display: none;color : mediumseagreen"></span>
    </div>

</div>

<br>
<br>

<h5 align="center" style="font:14px arial, sans-serif; color: blue"> <b> MS Information </b> </h5>

<div class="row">
    <div class="col-md-3">
        <g:textField name="universityOrInstituteForMs" class="form-control" placeholder="University/Institute" value="${applicantInformationInstance?.universityOrInstituteForMs}"></g:textField>

    </div>
    <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'msCGPA', 'error')} ">
            <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'msCGPA', 'error')} ">
                <div class="col-md-1" align="right">
                    <label for="msCGPA" style="font:15px arial, sans-serif;">
                        <g:message code="applicantInformation.honorsCGPA.label" default="CGPA" />

                    </label>

                </div>

                <div class="col-md-2">

                    <g:if test="${applicantInformationInstance?.msCGPA}">
                        <g:select id="type" name='msCgpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4"]}' class="form-control" value="${msCgpaPart1}"></g:select>

                    </g:if>
                    <g:else>
                        <g:select id="type" name='msCgpaPart1' noSelection="${['0':'']}" from='${["2", "3", "4"]}' class="form-control"></g:select>

                    </g:else>

                </div>


                <div class="col-md-2">


                    <g:if test="${applicantInformationInstance?.msCGPA}">
                        <g:textField name="msCgpaPart2" class="form-control" onkeyup="checkNumberAndDigitForMS(this.value)" id="portionAfterDecimalPartForMsCGPA" placeholder="00" value="${msCgpaPart2}"></g:textField>

                    </g:if>
                    <g:else>
                        <g:textField name="msCgpaPart2" class="form-control" onkeyup="checkNumberAndDigitForMS(this.value)" id="portionAfterDecimalPartForMsCGPA" placeholder="00" ></g:textField>
                        <span id="someHiddenDivportionAfterDecimalPartForMsCGPA" style="display: none;color : mediumseagreen"></span>
                    </g:else>


                </div>
            </div>



    </div>

    <div class="col-md-2">
        <g:textField name="subjectForMs" class="form-control" placeholder="Subject" value="${applicantInformationInstance?.subjectForMs}"></g:textField>
    </div>

    <div class="col-md-2">
        <g:textField name="durationForMs" id="uniPassingYearForMs" onkeyup="passingYearValidateForMS(this.value)" class="form-control" placeholder="Passing Year" value="${applicantInformationInstance?.durationForMs}"></g:textField>
        <span id="someHiddenDivForUniPassingYearForMs" style="display: none;color : mediumseagreen"></span>

    </div>

</div>

