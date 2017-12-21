<div class="col-md-12">
    <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'experienceYears', 'error')} required">
        <label for="experienceYears" style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.experienceYears.label" default="Experience Years" />
            <span class="required-indicator">*</span>
        </label>
        <g:field name="experienceYears" id="experienceYears" value="${fieldValue(bean: applicantInformationInstance, field: 'experienceYears')}" onkeyup="validateExperience(this.value)" class="form-control" required=""/>
        <span id="someHiddenDivForExperienceYears" style="display: none;color : mediumseagreen"></span>

    </div>
    <br>

</div>
<div class="col-md-12">
    <div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'experienceDetails', 'error')} ">
        <label for="experienceDetails" style="font:15px arial, sans-serif">
            <g:message code="applicantInformation.experienceDetails.label" default="Experience Details" />

        </label>
    <g:textArea name="experienceDetails" required="" class="form-control" rows="4" placeholder="Enter Present Address" value="${applicantInformationInstance?.experienceDetails}"/>

    </div>
</div>

