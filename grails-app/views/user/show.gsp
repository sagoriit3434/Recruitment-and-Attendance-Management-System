
<%@ page import="hrms.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="user.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${userInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="user.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${userInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.profilePicture}">
				<li class="fieldcontain">
					<span id="profilePicture-label" class="property-label"><g:message code="user.profilePicture.label" default="Profile Picture" /></span>
					
						<span class="property-value" aria-labelledby="profilePicture-label"><g:fieldValue bean="${userInstance}" field="profilePicture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="user.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="user.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.designation}">
				<li class="fieldcontain">
					<span id="designation-label" class="property-label"><g:message code="user.designation.label" default="Designation" /></span>
					
						<span class="property-value" aria-labelledby="designation-label"><g:fieldValue bean="${userInstance}" field="designation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="user.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${userInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.presentAddress}">
				<li class="fieldcontain">
					<span id="presentAddress-label" class="property-label"><g:message code="user.presentAddress.label" default="Present Address" /></span>
					
						<span class="property-value" aria-labelledby="presentAddress-label"><g:fieldValue bean="${userInstance}" field="presentAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.permanentAddress}">
				<li class="fieldcontain">
					<span id="permanentAddress-label" class="property-label"><g:message code="user.permanentAddress.label" default="Permanent Address" /></span>
					
						<span class="property-value" aria-labelledby="permanentAddress-label"><g:fieldValue bean="${userInstance}" field="permanentAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.joiningDate}">
				<li class="fieldcontain">
					<span id="joiningDate-label" class="property-label"><g:message code="user.joiningDate.label" default="Joining Date" /></span>
					
						<span class="property-value" aria-labelledby="joiningDate-label"><g:formatDate date="${userInstance?.joiningDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.education}">
				<li class="fieldcontain">
					<span id="education-label" class="property-label"><g:message code="user.education.label" default="Education" /></span>
					
						<span class="property-value" aria-labelledby="education-label"><g:fieldValue bean="${userInstance}" field="education"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.aboutUser}">
				<li class="fieldcontain">
					<span id="aboutUser-label" class="property-label"><g:message code="user.aboutUser.label" default="About User" /></span>
					
						<span class="property-value" aria-labelledby="aboutUser-label"><g:fieldValue bean="${userInstance}" field="aboutUser"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
