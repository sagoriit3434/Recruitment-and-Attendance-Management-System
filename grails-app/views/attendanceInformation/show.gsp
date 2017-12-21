
<%@ page import="hrms.AttendanceInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendanceInformation.label', default: 'AttendanceInformation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-attendanceInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-attendanceInformation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list attendanceInformation">
			
				<g:if test="${attendanceInformationInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="attendanceInformation.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${attendanceInformationInstance?.user?.id}">${attendanceInformationInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInformationInstance?.entryTime}">
				<li class="fieldcontain">
					<span id="entryTime-label" class="property-label"><g:message code="attendanceInformation.entryTime.label" default="Entry Time" /></span>
					
						<span class="property-value" aria-labelledby="entryTime-label"><g:fieldValue bean="${attendanceInformationInstance}" field="entryTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInformationInstance?.exitTime}">
				<li class="fieldcontain">
					<span id="exitTime-label" class="property-label"><g:message code="attendanceInformation.exitTime.label" default="Exit Time" /></span>
					
						<span class="property-value" aria-labelledby="exitTime-label"><g:fieldValue bean="${attendanceInformationInstance}" field="exitTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInformationInstance?.flag}">
				<li class="fieldcontain">
					<span id="flag-label" class="property-label"><g:message code="attendanceInformation.flag.label" default="Flag" /></span>
					
						<span class="property-value" aria-labelledby="flag-label"><g:formatBoolean boolean="${attendanceInformationInstance?.flag}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInformationInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="attendanceInformation.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:fieldValue bean="${attendanceInformationInstance}" field="date"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${attendanceInformationInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="attendanceInformation.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:fieldValue bean="${attendanceInformationInstance}" field="day"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:attendanceInformationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${attendanceInformationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
