<%@ page import="hrms.SkillSet" %>



<div class="fieldcontain ${hasErrors(bean: skillSetInstance, field: 'workEthic', 'error')} ">
	<label for="workEthic">
		<g:message code="skillSet.workEthic.label" default="Work Ethic" />
		
	</label>
	<g:field name="workEthic" value="${fieldValue(bean: skillSetInstance, field: 'workEthic')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: skillSetInstance, field: 'communicationSkills', 'error')} ">
	<label for="communicationSkills">
		<g:message code="skillSet.communicationSkills.label" default="Communication Skills" />
		
	</label>
	<g:field name="communicationSkills" value="${fieldValue(bean: skillSetInstance, field: 'communicationSkills')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: skillSetInstance, field: 'problemSolvingSkills', 'error')} ">
	<label for="problemSolvingSkills">
		<g:message code="skillSet.problemSolvingSkills.label" default="Problem Solving Skills" />
		
	</label>
	<g:field name="problemSolvingSkills" value="${fieldValue(bean: skillSetInstance, field: 'problemSolvingSkills')}"/>

</div>

