
<%@ page import="hrms.RecruitmentDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recruitmentDetails.label', default: 'RecruitmentDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recruitmentDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recruitmentDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recruitmentDetails">
			
				<g:if test="${recruitmentDetailsInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="recruitmentDetails.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${recruitmentDetailsInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.numberOfVacancy}">
				<li class="fieldcontain">
					<span id="numberOfVacancy-label" class="property-label"><g:message code="recruitmentDetails.numberOfVacancy.label" default="Number Of Vacancy" /></span>
					
						<span class="property-value" aria-labelledby="numberOfVacancy-label"><g:fieldValue bean="${recruitmentDetailsInstance}" field="numberOfVacancy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.experience}">
				<li class="fieldcontain">
					<span id="experience-label" class="property-label"><g:message code="recruitmentDetails.experience.label" default="Experience" /></span>
					
						<span class="property-value" aria-labelledby="experience-label"><g:fieldValue bean="${recruitmentDetailsInstance}" field="experience"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.constrains}">
				<li class="fieldcontain">
					<span id="constrains-label" class="property-label"><g:message code="recruitmentDetails.constrains.label" default="Constrains" /></span>
					
						<span class="property-value" aria-labelledby="constrains-label"><g:fieldValue bean="${recruitmentDetailsInstance}" field="constrains"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.facilities}">
				<li class="fieldcontain">
					<span id="facilities-label" class="property-label"><g:message code="recruitmentDetails.facilities.label" default="Facilities" /></span>
					
						<span class="property-value" aria-labelledby="facilities-label"><g:fieldValue bean="${recruitmentDetailsInstance}" field="facilities"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.jobDetails}">
				<li class="fieldcontain">
					<span id="jobDetails-label" class="property-label"><g:message code="recruitmentDetails.jobDetails.label" default="Job Details" /></span>
					
						<span class="property-value" aria-labelledby="jobDetails-label"><g:fieldValue bean="${recruitmentDetailsInstance}" field="jobDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.lastDateForApply}">
				<li class="fieldcontain">
					<span id="lastDateForApply-label" class="property-label"><g:message code="recruitmentDetails.lastDateForApply.label" default="Last Date For Apply" /></span>
					
						<span class="property-value" aria-labelledby="lastDateForApply-label"><g:formatDate date="${recruitmentDetailsInstance?.lastDateForApply}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.examDate}">
				<li class="fieldcontain">
					<span id="examDate-label" class="property-label"><g:message code="recruitmentDetails.examDate.label" default="Exam Date" /></span>
					
						<span class="property-value" aria-labelledby="examDate-label"><g:formatDate date="${recruitmentDetailsInstance?.examDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.examTime}">
				<li class="fieldcontain">
					<span id="examTime-label" class="property-label"><g:message code="recruitmentDetails.examTime.label" default="Exam Time" /></span>
					
						<span class="property-value" aria-labelledby="examTime-label"><g:fieldValue bean="${recruitmentDetailsInstance}" field="examTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recruitmentDetailsInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="recruitmentDetails.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:link controller="position" action="show" id="${recruitmentDetailsInstance?.position?.id}">${recruitmentDetailsInstance?.position?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recruitmentDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recruitmentDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
