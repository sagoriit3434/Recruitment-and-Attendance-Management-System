
<%@ page import="hrms.RecruitmentDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recruitmentDetails.label', default: 'RecruitmentDetails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recruitmentDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recruitmentDetails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="age" title="${message(code: 'recruitmentDetails.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="numberOfVacancy" title="${message(code: 'recruitmentDetails.numberOfVacancy.label', default: 'Number Of Vacancy')}" />
					
						<g:sortableColumn property="experience" title="${message(code: 'recruitmentDetails.experience.label', default: 'Experience')}" />
					
						<g:sortableColumn property="constrains" title="${message(code: 'recruitmentDetails.constrains.label', default: 'Constrains')}" />
					
						<g:sortableColumn property="facilities" title="${message(code: 'recruitmentDetails.facilities.label', default: 'Facilities')}" />
					
						<g:sortableColumn property="jobDetails" title="${message(code: 'recruitmentDetails.jobDetails.label', default: 'Job Details')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recruitmentDetailsInstanceList}" status="i" var="recruitmentDetailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recruitmentDetailsInstance.id}">${fieldValue(bean: recruitmentDetailsInstance, field: "age")}</g:link></td>
					
						<td>${fieldValue(bean: recruitmentDetailsInstance, field: "numberOfVacancy")}</td>
					
						<td>${fieldValue(bean: recruitmentDetailsInstance, field: "experience")}</td>
					
						<td>${fieldValue(bean: recruitmentDetailsInstance, field: "constrains")}</td>
					
						<td>${fieldValue(bean: recruitmentDetailsInstance, field: "facilities")}</td>
					
						<td>${fieldValue(bean: recruitmentDetailsInstance, field: "jobDetails")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recruitmentDetailsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
