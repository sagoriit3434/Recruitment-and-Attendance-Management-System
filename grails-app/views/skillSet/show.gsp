
<%@ page import="hrms.SkillSet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'skillSet.label', default: 'SkillSet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-skillSet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-skillSet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list skillSet">
			
				<g:if test="${skillSetInstance?.workEthic}">
				<li class="fieldcontain">
					<span id="workEthic-label" class="property-label"><g:message code="skillSet.workEthic.label" default="Work Ethic" /></span>
					
						<span class="property-value" aria-labelledby="workEthic-label"><g:fieldValue bean="${skillSetInstance}" field="workEthic"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${skillSetInstance?.communicationSkills}">
				<li class="fieldcontain">
					<span id="communicationSkills-label" class="property-label"><g:message code="skillSet.communicationSkills.label" default="Communication Skills" /></span>
					
						<span class="property-value" aria-labelledby="communicationSkills-label"><g:fieldValue bean="${skillSetInstance}" field="communicationSkills"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${skillSetInstance?.problemSolvingSkills}">
				<li class="fieldcontain">
					<span id="problemSolvingSkills-label" class="property-label"><g:message code="skillSet.problemSolvingSkills.label" default="Problem Solving Skills" /></span>
					
						<span class="property-value" aria-labelledby="problemSolvingSkills-label"><g:fieldValue bean="${skillSetInstance}" field="problemSolvingSkills"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:skillSetInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${skillSetInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
