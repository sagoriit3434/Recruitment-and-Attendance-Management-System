<div class="col-md-12">
    <div class="col-md-6">
        <g:if test="${applicantInformationInstance?.imagePath}">
            <img id='img-upload' src="${request.contextPath}/commonAjax/downloadDoc?moduleName=applicant_Information&subModuleName=applicant_Image&fileName=${applicantInformationInstance?.imagePath}" alt="User profile picture"/>

        </g:if>
        <g:else>
            <img id='img-upload' src="${resource(dir: "dist/img", file: "images.png")}" alt="User profile picture">
        </g:else>
        <br>

        <br>

    </div>

    <div class="col-md-6">

    </div>



</div>





<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <label style="font:15px arial, sans-serif">Download Image  </label>
        </label>
    </div>
    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">


        <g:if test="${applicantInformationInstance?.imagePath}">

            <a href="${request.contextPath}/commonAjax/downloadDoc?moduleName=applicant_Information&subModuleName=applicant_Image&fileName=${applicantInformationInstance?.imagePath}" style="font:15px arial, sans-serif; color: blue">Download</a>

        <br>
        </g:if>
        <g:else>
            <label style="font:15px arial, sans-serif; color: red">
                No Image to download.

            </label>
            <br>

        </g:else>

    </div>

</div>

<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="CV  " />
        </label>
    </div>
    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">

        <g:if test="${applicantInformationInstance?.cv}">

        <a href="${request.contextPath}/commonAjax/downloadDoc?moduleName=applicant_Information&subModuleName=applicant_CV&fileName=${applicantInformationInstance?.cv}" style="font:15px arial, sans-serif; color: green">View/Download Your Existing CV</a>

        <br>
        </g:if>
        <g:else>
            <label style="font:15px arial, sans-serif; color: red">
                No CV to download.

            </label>
            <br>

        </g:else>

    </div>

</div>


<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Applicant Name  " />
        </label>
    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            ${applicantInformationInstance?.applicantName}
        </label>
        <br>


    </div>

</div>



<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Email Address  " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            ${applicantInformationInstance?.emailAddress}

        </label>
        <br>


    </div>

</div>
<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Gender  " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            ${applicantInformationInstance?.gender}

        </label>
        <br>


    </div>

</div>
<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Date of Birth  " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            <g:if test="${dateOfBirth}">
                ${dateOfBirth}
            </g:if>
            <g:else>
                Not entered
            </g:else>
        </label>
        <br>


    </div>

</div>

<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Father Name  " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            ${applicantInformationInstance?.fatherName}

        </label>
        <br>


    </div>

</div>



<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Mother Name  " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            ${applicantInformationInstance?.motherName}

        </label>
        <br>


    </div>

</div>



<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Present Address  " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            ${applicantInformationInstance?.presentAddress}
        </label>
        <br>


    </div>

</div>



<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Permanent Address " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <label style="font:15px arial, sans-serif; color: black">
            ${applicantInformationInstance?.permanentAddress}

        </label>
        <br>


    </div>

</div>



































