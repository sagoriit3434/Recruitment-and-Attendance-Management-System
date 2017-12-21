<%@ page import="hrms.AttendanceInformation" %>



<div class="fieldcontain ${hasErrors(bean: attendanceInformationInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="attendanceInformation.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${hrms.User.list()}" optionKey="id" required="" value="${attendanceInformationInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInformationInstance, field: 'entryTime', 'error')} required">
	<label for="entryTime">
		<g:message code="attendanceInformation.entryTime.label" default="Entry Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="entryTime" required="" value="${attendanceInformationInstance?.entryTime}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInformationInstance, field: 'exitTime', 'error')} ">
	<label for="exitTime">
		<g:message code="attendanceInformation.exitTime.label" default="Exit Time" />
		
	</label>
	<g:textField name="exitTime" value="${attendanceInformationInstance?.exitTime}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInformationInstance, field: 'flag', 'error')} ">
	<label for="flag">
		<g:message code="attendanceInformation.flag.label" default="Flag" />
		
	</label>
	<g:checkBox name="flag" value="${attendanceInformationInstance?.flag}" />

</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInformationInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="attendanceInformation.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="date" required="" value="${attendanceInformationInstance?.date}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInformationInstance, field: 'day', 'error')} required">
	<label for="day">
		<g:message code="attendanceInformation.day.label" default="Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="day" type="number" value="${attendanceInformationInstance.day}" required=""/>

</div>

