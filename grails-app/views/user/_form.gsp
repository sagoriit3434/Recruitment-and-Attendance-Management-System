<%@ page import="hrms.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${userInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="role" required="" value="${userInstance?.role}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'profilePicture', 'error')} ">
	<label for="profilePicture">
		<g:message code="user.profilePicture.label" default="Profile Picture" />
		
	</label>
	<g:textField name="profilePicture" value="${userInstance?.profilePicture}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${userInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${userInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'designation', 'error')} ">
	<label for="designation">
		<g:message code="user.designation.label" default="Designation" />
		
	</label>
	<g:textField name="designation" value="${userInstance?.designation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="user.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${userInstance?.dateOfBirth}" default="none" noSelection="['': '']"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'presentAddress', 'error')} ">
	<label for="presentAddress">
		<g:message code="user.presentAddress.label" default="Present Address" />
		
	</label>
	<g:textField name="presentAddress" value="${userInstance?.presentAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'permanentAddress', 'error')} ">
	<label for="permanentAddress">
		<g:message code="user.permanentAddress.label" default="Permanent Address" />
		
	</label>
	<g:textField name="permanentAddress" value="${userInstance?.permanentAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'joiningDate', 'error')} ">
	<label for="joiningDate">
		<g:message code="user.joiningDate.label" default="Joining Date" />
		
	</label>
	<g:datePicker name="joiningDate" precision="day"  value="${userInstance?.joiningDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'education', 'error')} ">
	<label for="education">
		<g:message code="user.education.label" default="Education" />
		
	</label>
	<g:textField name="education" value="${userInstance?.education}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'aboutUser', 'error')} ">
	<label for="aboutUser">
		<g:message code="user.aboutUser.label" default="About User" />
		
	</label>
	<g:textField name="aboutUser" value="${userInstance?.aboutUser}"/>

</div>

