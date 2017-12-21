
<%@ page import="hrms.ApplicantInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'applicantInformation.label', default: 'ApplicantInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-applicantInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-applicantInformation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="imagePath" title="${message(code: 'applicantInformation.imagePath.label', default: 'Image Path')}" />
					
						<g:sortableColumn property="applicantName" title="${message(code: 'applicantInformation.applicantName.label', default: 'Applicant Name')}" />
					
						<g:sortableColumn property="fatherName" title="${message(code: 'applicantInformation.fatherName.label', default: 'Father Name')}" />
					
						<g:sortableColumn property="motherName" title="${message(code: 'applicantInformation.motherName.label', default: 'Mother Name')}" />
					
						<g:sortableColumn property="presentAddress" title="${message(code: 'applicantInformation.presentAddress.label', default: 'Present Address')}" />
					
						<g:sortableColumn property="permanentAddress" title="${message(code: 'applicantInformation.permanentAddress.label', default: 'Permanent Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${applicantInformationInstanceList}" status="i" var="applicantInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${applicantInformationInstance.id}">${fieldValue(bean: applicantInformationInstance, field: "imagePath")}</g:link></td>
					
						<td>${fieldValue(bean: applicantInformationInstance, field: "applicantName")}</td>
					
						<td>${fieldValue(bean: applicantInformationInstance, field: "fatherName")}</td>
					
						<td>${fieldValue(bean: applicantInformationInstance, field: "motherName")}</td>
					
						<td>${fieldValue(bean: applicantInformationInstance, field: "presentAddress")}</td>
					
						<td>${fieldValue(bean: applicantInformationInstance, field: "permanentAddress")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${applicantInformationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
