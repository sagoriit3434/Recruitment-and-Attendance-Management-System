<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Communication Skill " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <g:if test="${applicantInformationInstance?.skillSet?.communicationSkills == 1}">
            <label style="font:15px arial, sans-serif; color: black">
                Weak
            </label>
        </g:if>

        <g:elseif test="${applicantInformationInstance?.skillSet?.communicationSkills == 2}">
            <label style="font:15px arial, sans-serif; color: black">
                Average
            </label>
        </g:elseif>

        <g:elseif test="${applicantInformationInstance?.skillSet?.communicationSkills == 3}">
            <label style="font:15px arial, sans-serif; color: black">
                Good
            </label>
        </g:elseif>

        <g:elseif test="${applicantInformationInstance?.skillSet?.communicationSkills == 4}">
            <label style="font:15px arial, sans-serif; color: black">
                Excellent
            </label>
        </g:elseif>
        <g:else>
            <label style="font:15px arial, sans-serif; color: black">
                Blank.
            </label>
        </g:else>




        <br>


    </div>

</div>


<div class="col-md-12">
    <g:if test="${applicantInformationInstance?.skillSet?.communicationSkills}">
        <div class="progress active">
        <div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${applicantInformationInstance?.skillSet?.communicationSkills*25}%">
        <span class="sr-only">${applicantInformationInstance?.skillSet?.communicationSkills*25}% Complete (success)</span>
        </div>
        </div>
    </g:if>
    <g:else>
        <div class="progress active">
            <div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                <span class="sr-only">40% Complete (success)</span>
            </div>
        </div>

    </g:else>

</div>


<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Problem Solving Skill " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <g:if test="${applicantInformationInstance?.skillSet?.problemSolvingSkills == 1}">
            <label style="font:15px arial, sans-serif; color: black">
                Weak
            </label>
        </g:if>

        <g:elseif test="${applicantInformationInstance?.skillSet?.problemSolvingSkills == 2}">
            <label style="font:15px arial, sans-serif; color: black">
                Average
            </label>
        </g:elseif>

        <g:elseif test="${applicantInformationInstance?.skillSet?.problemSolvingSkills == 3}">
            <label style="font:15px arial, sans-serif; color: black">
                Good
            </label>
        </g:elseif>

        <g:elseif test="${applicantInformationInstance?.skillSet?.problemSolvingSkills == 4}">
            <label style="font:15px arial, sans-serif; color: black">
                Excellent
            </label>
        </g:elseif>
        <g:else>
            <label style="font:15px arial, sans-serif; color: black">
                Blank.
            </label>
        </g:else>




        <br>


    </div>

</div>


<div class="col-md-12">
    <g:if test="${applicantInformationInstance?.skillSet?.problemSolvingSkills}">
        <div class="progress active">
            <div class="progress-bar progress-bar-green progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${applicantInformationInstance?.skillSet?.problemSolvingSkills*25}%">
                <span class="sr-only">${applicantInformationInstance?.skillSet?.problemSolvingSkills*25}% Complete (success)</span>
            </div>
        </div>
    </g:if>
    <g:else>
        <div class="progress active">
            <div class="progress-bar progress-bar-green progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                <span class="sr-only">40% Complete (success)</span>
            </div>
        </div>

    </g:else>

</div>




<div class="col-md-12">
    <div class="col-md-3">
        <label style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.cv.label" default="Works Ethics  " />
        </label>

    </div>

    <div class="col-md-1">
        <label style="font:15px arial, sans-serif; color: black"> :  </label>

    </div>

    <div class="col-md-8">
        <g:if test="${applicantInformationInstance?.skillSet?.workEthic == 1}">
            <label style="font:15px arial, sans-serif; color: black">
                Weak
            </label>
        </g:if>

        <g:elseif test="${applicantInformationInstance?.skillSet?.workEthic == 2}">
            <label style="font:15px arial, sans-serif; color: black">
                Average
            </label>
        </g:elseif>

        <g:elseif test="${applicantInformationInstance?.skillSet?.workEthic == 3}">
            <label style="font:15px arial, sans-serif; color: black">
                Good
            </label>
        </g:elseif>

        <g:elseif test="${applicantInformationInstance?.skillSet?.workEthic == 4}">
            <label style="font:15px arial, sans-serif; color: black">
                Excellent
            </label>
        </g:elseif>
        <g:else>
            <label style="font:15px arial, sans-serif; color: black">
                Blank.
            </label>
        </g:else>




        <br>


    </div>

</div>


<div class="col-md-12">
    <g:if test="${applicantInformationInstance?.skillSet?.workEthic}">
        <div class="progress active">
            <div class="progress-bar progress-bar-yellow progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${applicantInformationInstance?.skillSet?.workEthic*25}%">
                <span class="sr-only">${applicantInformationInstance?.skillSet?.workEthic*25}% Complete (success)</span>
            </div>
        </div>
    </g:if>
    <g:else>
        <div class="progress active">
            <div class="progress-bar progress-bar-yellow progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                <span class="sr-only">40% Complete (success)</span>
            </div>
        </div>

    </g:else>

</div>





















%{--<div class="progress active">--}%
    %{--<div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">--}%
        %{--<span class="sr-only">40% Complete (success)</span>--}%
    %{--</div>--}%
%{--</div>--}%
%{--<p>Class: <code>.sm</code></p>--}%

%{--<div class="progress  active">--}%
    %{--<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 30%">--}%
        %{--<span class="sr-only">20% Complete</span>--}%
    %{--</div>--}%
%{--</div>--}%
%{--<p>Class: <code>.xs</code></p>--}%

%{--<div class="progress ">--}%
    %{--<div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 50%">--}%
        %{--<span class="sr-only">60% Complete (warning)</span>--}%
    %{--</div>--}%
%{--</div>--}%