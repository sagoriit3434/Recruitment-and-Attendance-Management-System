<div class="row">
    <div class="col-md-12">
        <g:if test="${applicantInformationInstance?.imagePath}">
            <img id='img-upload' src="${request.contextPath}/commonAjax/downloadDoc?moduleName=applicant_Information&subModuleName=applicant_Image&fileName=${applicantInformationInstance?.imagePath}" alt="No image found"/>

        </g:if>
        <g:else>
            <img id='img-upload' src="${resource(dir: "dist/img", file: "images.png")}" alt="No default image found"/>

        </g:else>

    </div>

</div>






<div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label style="font:15px arial, sans-serif">Upload Image</label>
                <div class="input-group">
                    <span class="input-group-btn">
                        <span class="btn btn-default btn-file">
                            Browse… <input type="file" id="imgInp" name="imagePath" accept="image/*">
                        </span>
                    </span>
                    <input type="text" class="form-control" readonly>
                </div>

            </div>
        </div>

        <div class="col-md-6">
            <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'cv', 'error')} ">
                <label style="font:15px arial, sans-serif">
                    <g:if test="${applicantInformationInstance?.cv}">
                        <a href="${request.contextPath}/commonAjax/downloadDoc?moduleName=applicant_Information&subModuleName=applicant_CV&fileName=${applicantInformationInstance?.cv}" style="font:15px arial, sans-serif; color: green">View/Download Your Existing CV</a>

                    </g:if>
                    <g:else>
                        <g:message code="applicantInformation.cv.label" default="CV" />

                    </g:else>
                </label>


                <input type="file" name="filePath" class="form-control" accept=".pdf">

                <br>


            </div>

        </div>

    </div>


<div class="row">
    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'applicantName', 'error')} required">
            <label for="applicantName" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.applicantName.label" default="Applicant Name" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="applicantName" required="" value="${applicantInformationInstance?.applicantName}" class="form-control"/>
            <br>

        </div>

    </div>

    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'emailAddress', 'error')} required">
            <label for="emailAddress" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.emailAddress.label" default="Email Address" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="emailAddress" required="" id="emailAddressValidate" value="${applicantInformationInstance?.emailAddress}" class="form-control" onblur="validateEmail(this);"/>
            <span id="someHiddenDivForEmailAddressValidate" style="display: none;color : mediumseagreen"></span>

            <br>


        </div>

    </div>

</div>


<div class="row">

    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'gender', 'error')} required">
            <label for="gender" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.gender.label" default="Gender" />
                <span class="required-indicator">*</span>
            </label>
            <g:select name="gender" from="${hrms.Gender?.values()}" class="form-control" keys="${hrms.Gender.values()*.name()}" noSelection="${['': 'Select One']}" required="" value="${applicantInformationInstance?.gender?.name()}" />
            <br>

        </div>
    </div>

    <div class="col-md-6">
        <div>
            <label for="emailAddress" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.emailAddress.label" default="Date of Birth" />
            </label>
            <br>
            <input id="date" name="dateOfBirth" type="date" value="${dateOfBirth}" class="form-control">

            %{--<g:datePicker name="dateOfBirth" precision="day"  value="${applicantInformationInstance?.dateOfBirth}" default="none" noSelection="['': '']" class="form-control"/>--}%

            <br>


        </div>

    </div>



</div>

<div class="row">


    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'fatherName', 'error')} ">
            <label for="fatherName" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.fatherName.label" default="Father Name" />

            </label>
            <g:textField name="fatherName" class="form-control" value="${applicantInformationInstance?.fatherName}"/>
            <br>

        </div>

    </div>

    <div class="col-md-6">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'motherName', 'error')} ">
            <label for="motherName" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.motherName.label" default="Mother Name" />

            </label>
            <g:textField name="motherName" class="form-control" value="${applicantInformationInstance?.motherName}"/>

        </div>
    </div>


</div>

<div class="row">
    <div class="col-md-12">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'presentAddress', 'error')} required">
            <label for="presentAddress" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.presentAddress.label" default="Present Address" />
                <span class="required-indicator">*</span>
            </label>
            <g:textArea  name="presentAddress" required="" class="form-control" rows="3" placeholder="Enter Present Address" value="${applicantInformationInstance?.presentAddress}"/>


            %{--<textarea name="presentAddress" required="" class="form-control" rows="3" placeholder="Enter Present Address" value="${applicantInformationInstance?.presentAddress}"></textarea>--}%

            <br>
        </div>

    </div>


</div>

<div class="row">
    <div class="col-md-12">
        <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'permanentAddress', 'error')} required">
            <label for="permanentAddress" style="font:15px arial, sans-serif">
                <g:message code="applicantInformation.permanentAddress.label" default="Permanent Address" />
                <span class="required-indicator">*</span>
            </label>
            <g:textArea name="permanentAddress" required="" class="form-control" rows="3" placeholder="Enter Permanent Address" value="${applicantInformationInstance?.permanentAddress}"/>

            %{--<textarea name="permanentAddress" required="" class="form-control" rows="3" placeholder="Enter Permanent Address" value="${applicantInformationInstance?.permanentAddress}"></textarea>--}%


        </div>

    </div>

</div>
























