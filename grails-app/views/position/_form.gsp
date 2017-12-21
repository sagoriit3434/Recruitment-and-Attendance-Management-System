<%@ page import="hrms.Position" %>



<div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'positionName', 'error')} required">
	<label for="positionName">
		<g:message code="position.positionName.label" default="Position Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="positionName" required="" value="${positionInstance?.positionName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'positionDetails', 'error')} ">
	<label for="positionDetails">
		<g:message code="position.positionDetails.label" default="Position Details" />
		
	</label>
	<g:textField name="positionDetails" value="${positionInstance?.positionDetails}"/>

</div>

