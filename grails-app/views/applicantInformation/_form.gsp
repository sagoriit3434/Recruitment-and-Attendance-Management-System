<%@ page import="hrms.ApplicantInformation" %>



<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'imagePath', 'error')} ">
	<label for="imagePath">
		<g:message code="applicantInformation.imagePath.label" default="Image Path" />
		
	</label>
	<g:textField name="imagePath" value="${applicantInformationInstance?.imagePath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'applicantName', 'error')} required">
	<label for="applicantName">
		<g:message code="applicantInformation.applicantName.label" default="Applicant Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="applicantName" required="" value="${applicantInformationInstance?.applicantName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'fatherName', 'error')} ">
	<label for="fatherName">
		<g:message code="applicantInformation.fatherName.label" default="Father Name" />
		
	</label>
	<g:textField name="fatherName" value="${applicantInformationInstance?.fatherName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'motherName', 'error')} ">
	<label for="motherName">
		<g:message code="applicantInformation.motherName.label" default="Mother Name" />
		
	</label>
	<g:textField name="motherName" value="${applicantInformationInstance?.motherName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'presentAddress', 'error')} required">
	<label for="presentAddress">
		<g:message code="applicantInformation.presentAddress.label" default="Present Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="presentAddress" required="" value="${applicantInformationInstance?.presentAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'permanentAddress', 'error')} required">
	<label for="permanentAddress">
		<g:message code="applicantInformation.permanentAddress.label" default="Permanent Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="permanentAddress" required="" value="${applicantInformationInstance?.permanentAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="applicantInformation.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailAddress" required="" value="${applicantInformationInstance?.emailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'cv', 'error')} ">
	<label for="cv">
		<g:message code="applicantInformation.cv.label" default="Cv" />
		
	</label>
	<g:textField name="cv" value="${applicantInformationInstance?.cv}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'discardIndicator', 'error')} ">
	<label for="discardIndicator">
		<g:message code="applicantInformation.discardIndicator.label" default="Discard Indicator" />
		
	</label>
	<g:checkBox name="discardIndicator" value="${applicantInformationInstance?.discardIndicator}" />

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'approveIndicator', 'error')} ">
	<label for="approveIndicator">
		<g:message code="applicantInformation.approveIndicator.label" default="Approve Indicator" />
		
	</label>
	<g:checkBox name="approveIndicator" value="${applicantInformationInstance?.approveIndicator}" />

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'recruitmentDetails', 'error')} required">
	<label for="recruitmentDetails">
		<g:message code="applicantInformation.recruitmentDetails.label" default="Recruitment Details" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="recruitmentDetails" name="recruitmentDetails.id" from="${hrms.RecruitmentDetails.list()}" optionKey="id" required="" value="${applicantInformationInstance?.recruitmentDetails?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'serialNo', 'error')} required">
	<label for="serialNo">
		<g:message code="applicantInformation.serialNo.label" default="Serial No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="serialNo" required="" value="${applicantInformationInstance?.serialNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="applicantInformation.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${hrms.Gender?.values()}" keys="${hrms.Gender.values()*.name()}" required="" value="${applicantInformationInstance?.gender?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'experienceYears', 'error')} required">
	<label for="experienceYears">
		<g:message code="applicantInformation.experienceYears.label" default="Experience Years" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="experienceYears" value="${fieldValue(bean: applicantInformationInstance, field: 'experienceYears')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'experienceDetails', 'error')} ">
	<label for="experienceDetails">
		<g:message code="applicantInformation.experienceDetails.label" default="Experience Details" />
		
	</label>
	<g:textField name="experienceDetails" value="${applicantInformationInstance?.experienceDetails}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorsCGPA', 'error')} ">
	<label for="honorsCGPA">
		<g:message code="applicantInformation.honorsCGPA.label" default="Honors CGPA" />
		
	</label>
	<g:field name="honorsCGPA" value="${fieldValue(bean: applicantInformationInstance, field: 'honorsCGPA')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'universityOrInstituteForHonors', 'error')} ">
	<label for="universityOrInstituteForHonors">
		<g:message code="applicantInformation.universityOrInstituteForHonors.label" default="University Or Institute For Honors" />
		
	</label>
	<g:textField name="universityOrInstituteForHonors" value="${applicantInformationInstance?.universityOrInstituteForHonors}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'durationForHonors', 'error')} ">
	<label for="durationForHonors">
		<g:message code="applicantInformation.durationForHonors.label" default="Duration For Honors" />
		
	</label>
	<g:textField name="durationForHonors" value="${applicantInformationInstance?.durationForHonors}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'msCGPA', 'error')} ">
	<label for="msCGPA">
		<g:message code="applicantInformation.msCGPA.label" default="Ms CGPA" />
		
	</label>
	<g:field name="msCGPA" value="${fieldValue(bean: applicantInformationInstance, field: 'msCGPA')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'universityOrInstituteForMs', 'error')} ">
	<label for="universityOrInstituteForMs">
		<g:message code="applicantInformation.universityOrInstituteForMs.label" default="University Or Institute For Ms" />
		
	</label>
	<g:textField name="universityOrInstituteForMs" value="${applicantInformationInstance?.universityOrInstituteForMs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'durationForMs', 'error')} ">
	<label for="durationForMs">
		<g:message code="applicantInformation.durationForMs.label" default="Duration For Ms" />
		
	</label>
	<g:textField name="durationForMs" value="${applicantInformationInstance?.durationForMs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'skillSet', 'error')} ">
	<label for="skillSet">
		<g:message code="applicantInformation.skillSet.label" default="Skill Set" />
		
	</label>
	<g:select id="skillSet" name="skillSet.id" from="${hrms.SkillSet.list()}" optionKey="id" value="${applicantInformationInstance?.skillSet?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'sseCGPA', 'error')} ">
	<label for="sseCGPA">
		<g:message code="applicantInformation.sseCGPA.label" default="Sse CGPA" />
		
	</label>
	<g:field name="sseCGPA" value="${fieldValue(bean: applicantInformationInstance, field: 'sseCGPA')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'schoolName', 'error')} ">
	<label for="schoolName">
		<g:message code="applicantInformation.schoolName.label" default="School Name" />
		
	</label>
	<g:textField name="schoolName" value="${applicantInformationInstance?.schoolName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'passingYearForSSC', 'error')} ">
	<label for="passingYearForSSC">
		<g:message code="applicantInformation.passingYearForSSC.label" default="Passing Year For SSC" />
		
	</label>
	<g:textField name="passingYearForSSC" value="${applicantInformationInstance?.passingYearForSSC}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'boardForSsc', 'error')} ">
	<label for="boardForSsc">
		<g:message code="applicantInformation.boardForSsc.label" default="Board For Ssc" />
		
	</label>
	<g:textField name="boardForSsc" value="${applicantInformationInstance?.boardForSsc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'hseCGPA', 'error')} ">
	<label for="hseCGPA">
		<g:message code="applicantInformation.hseCGPA.label" default="Hse CGPA" />
		
	</label>
	<g:field name="hseCGPA" value="${fieldValue(bean: applicantInformationInstance, field: 'hseCGPA')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'collegeName', 'error')} ">
	<label for="collegeName">
		<g:message code="applicantInformation.collegeName.label" default="College Name" />
		
	</label>
	<g:textField name="collegeName" value="${applicantInformationInstance?.collegeName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'passingYearForHsc', 'error')} ">
	<label for="passingYearForHsc">
		<g:message code="applicantInformation.passingYearForHsc.label" default="Passing Year For Hsc" />
		
	</label>
	<g:textField name="passingYearForHsc" value="${applicantInformationInstance?.passingYearForHsc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'boardForHsc', 'error')} ">
	<label for="boardForHsc">
		<g:message code="applicantInformation.boardForHsc.label" default="Board For Hsc" />
		
	</label>
	<g:textField name="boardForHsc" value="${applicantInformationInstance?.boardForHsc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'subjectForHonors', 'error')} ">
	<label for="subjectForHonors">
		<g:message code="applicantInformation.subjectForHonors.label" default="Subject For Honors" />
		
	</label>
	<g:textField name="subjectForHonors" value="${applicantInformationInstance?.subjectForHonors}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'subjectForMs', 'error')} ">
	<label for="subjectForMs">
		<g:message code="applicantInformation.subjectForMs.label" default="Subject For Ms" />
		
	</label>
	<g:textField name="subjectForMs" value="${applicantInformationInstance?.subjectForMs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'examCenter', 'error')} ">
	<label for="examCenter">
		<g:message code="applicantInformation.examCenter.label" default="Exam Center" />
		
	</label>
	<g:textField name="examCenter" value="${applicantInformationInstance?.examCenter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'indicatorForAdmitCard', 'error')} ">
	<label for="indicatorForAdmitCard">
		<g:message code="applicantInformation.indicatorForAdmitCard.label" default="Indicator For Admit Card" />
		
	</label>
	<g:checkBox name="indicatorForAdmitCard" value="${applicantInformationInstance?.indicatorForAdmitCard}" />

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'sscGpaForRecom', 'error')} required">
	<label for="sscGpaForRecom">
		<g:message code="applicantInformation.sscGpaForRecom.label" default="Ssc Gpa For Recom" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sscGpaForRecom" value="${fieldValue(bean: applicantInformationInstance, field: 'sscGpaForRecom')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'hseGpaForRecom', 'error')} required">
	<label for="hseGpaForRecom">
		<g:message code="applicantInformation.hseGpaForRecom.label" default="Hse Gpa For Recom" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hseGpaForRecom" value="${fieldValue(bean: applicantInformationInstance, field: 'hseGpaForRecom')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'honorGpaForRecom', 'error')} required">
	<label for="honorGpaForRecom">
		<g:message code="applicantInformation.honorGpaForRecom.label" default="Honor Gpa For Recom" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="honorGpaForRecom" value="${fieldValue(bean: applicantInformationInstance, field: 'honorGpaForRecom')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'msGpaForRecom', 'error')} required">
	<label for="msGpaForRecom">
		<g:message code="applicantInformation.msGpaForRecom.label" default="Ms Gpa For Recom" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="msGpaForRecom" value="${fieldValue(bean: applicantInformationInstance, field: 'msGpaForRecom')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'communicationSkillForRecom', 'error')} required">
	<label for="communicationSkillForRecom">
		<g:message code="applicantInformation.communicationSkillForRecom.label" default="Communication Skill For Recom" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="communicationSkillForRecom" value="${fieldValue(bean: applicantInformationInstance, field: 'communicationSkillForRecom')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'problemSolvingSkillForRecom', 'error')} required">
	<label for="problemSolvingSkillForRecom">
		<g:message code="applicantInformation.problemSolvingSkillForRecom.label" default="Problem Solving Skill For Recom" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="problemSolvingSkillForRecom" value="${fieldValue(bean: applicantInformationInstance, field: 'problemSolvingSkillForRecom')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'experienceForRecom', 'error')} required">
	<label for="experienceForRecom">
		<g:message code="applicantInformation.experienceForRecom.label" default="Experience For Recom" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="experienceForRecom" value="${fieldValue(bean: applicantInformationInstance, field: 'experienceForRecom')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicantInformationInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="applicantInformation.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${applicantInformationInstance?.dateOfBirth}" default="none" noSelection="['': '']" />

</div>

