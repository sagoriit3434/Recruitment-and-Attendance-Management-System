
<%@ page import="hrms.Position" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'position.label', default: 'Position')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-position" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-position" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list position">
			
				<g:if test="${positionInstance?.positionName}">
				<li class="fieldcontain">
					<span id="positionName-label" class="property-label"><g:message code="position.positionName.label" default="Position Name" /></span>
					
						<span class="property-value" aria-labelledby="positionName-label"><g:fieldValue bean="${positionInstance}" field="positionName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${positionInstance?.positionDetails}">
				<li class="fieldcontain">
					<span id="positionDetails-label" class="property-label"><g:message code="position.positionDetails.label" default="Position Details" /></span>
					
						<span class="property-value" aria-labelledby="positionDetails-label"><g:fieldValue bean="${positionInstance}" field="positionDetails"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:positionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${positionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
