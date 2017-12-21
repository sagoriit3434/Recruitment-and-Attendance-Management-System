<%@ page import="hrms.RecruitmentDetails" %>



<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="recruitmentDetails.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="age" required="" value="${recruitmentDetailsInstance?.age}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'numberOfVacancy', 'error')} required">
	<label for="numberOfVacancy">
		<g:message code="recruitmentDetails.numberOfVacancy.label" default="Number Of Vacancy" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfVacancy" type="number" value="${recruitmentDetailsInstance.numberOfVacancy}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'experience', 'error')} required">
	<label for="experience">
		<g:message code="recruitmentDetails.experience.label" default="Experience" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="experience" required="" value="${recruitmentDetailsInstance?.experience}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'constrains', 'error')} required">
	<label for="constrains">
		<g:message code="recruitmentDetails.constrains.label" default="Constrains" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="constrains" required="" value="${recruitmentDetailsInstance?.constrains}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'facilities', 'error')} required">
	<label for="facilities">
		<g:message code="recruitmentDetails.facilities.label" default="Facilities" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="facilities" required="" value="${recruitmentDetailsInstance?.facilities}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'jobDetails', 'error')} required">
	<label for="jobDetails">
		<g:message code="recruitmentDetails.jobDetails.label" default="Job Details" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="jobDetails" required="" value="${recruitmentDetailsInstance?.jobDetails}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'lastDateForApply', 'error')} required">
	<label for="lastDateForApply">
		<g:message code="recruitmentDetails.lastDateForApply.label" default="Last Date For Apply" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastDateForApply" precision="day"  value="${recruitmentDetailsInstance?.lastDateForApply}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'examDate', 'error')} required">
	<label for="examDate">
		<g:message code="recruitmentDetails.examDate.label" default="Exam Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="examDate" precision="day"  value="${recruitmentDetailsInstance?.examDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'examTime', 'error')} required">
	<label for="examTime">
		<g:message code="recruitmentDetails.examTime.label" default="Exam Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="examTime" required="" value="${recruitmentDetailsInstance?.examTime}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recruitmentDetailsInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="recruitmentDetails.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="position" name="position.id" from="${hrms.Position.list()}" optionKey="id" required="" value="${recruitmentDetailsInstance?.position?.id}" class="many-to-one"/>

</div>

