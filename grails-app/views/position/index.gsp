
<%@ page import="hrms.Position" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'position.label', default: 'Position')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-position" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-position" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="positionName" title="${message(code: 'position.positionName.label', default: 'Position Name')}" />
					
						<g:sortableColumn property="positionDetails" title="${message(code: 'position.positionDetails.label', default: 'Position Details')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${positionInstanceList}" status="i" var="positionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${positionInstance.id}">${fieldValue(bean: positionInstance, field: "positionName")}</g:link></td>
					
						<td>${fieldValue(bean: positionInstance, field: "positionDetails")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${positionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
