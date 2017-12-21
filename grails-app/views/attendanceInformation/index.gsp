
<%@ page import="hrms.AttendanceInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'attendanceInformation.label', default: 'AttendanceInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-attendanceInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-attendanceInformation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="attendanceInformation.user.label" default="User" /></th>
					
						<g:sortableColumn property="entryTime" title="${message(code: 'attendanceInformation.entryTime.label', default: 'Entry Time')}" />
					
						<g:sortableColumn property="exitTime" title="${message(code: 'attendanceInformation.exitTime.label', default: 'Exit Time')}" />
					
						<g:sortableColumn property="flag" title="${message(code: 'attendanceInformation.flag.label', default: 'Flag')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'attendanceInformation.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="day" title="${message(code: 'attendanceInformation.day.label', default: 'Day')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${attendanceInformationInstanceList}" status="i" var="attendanceInformationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${attendanceInformationInstance.id}">${fieldValue(bean: attendanceInformationInstance, field: "user")}</g:link></td>
					
						<td>${fieldValue(bean: attendanceInformationInstance, field: "entryTime")}</td>
					
						<td>${fieldValue(bean: attendanceInformationInstance, field: "exitTime")}</td>
					
						<td><g:formatBoolean boolean="${attendanceInformationInstance.flag}" /></td>
					
						<td>${fieldValue(bean: attendanceInformationInstance, field: "date")}</td>
					
						<td>${fieldValue(bean: attendanceInformationInstance, field: "day")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${attendanceInformationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
