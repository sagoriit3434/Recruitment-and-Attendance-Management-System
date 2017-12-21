<%@ page import="hrms.AvailAblePosition" %>



<div class="fieldcontain ${hasErrors(bean: availAblePositionInstance, field: 'positionName', 'error')} required">
	<label for="positionName">
		<g:message code="availAblePosition.positionName.label" default="Position Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="positionName" required="" value="${availAblePositionInstance?.positionName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: availAblePositionInstance, field: 'positionDetails', 'error')} ">
	<label for="positionDetails">
		<g:message code="availAblePosition.positionDetails.label" default="Position Details" />
		
	</label>
	<g:textField name="positionDetails" value="${availAblePositionInstance?.positionDetails}"/>

</div>

