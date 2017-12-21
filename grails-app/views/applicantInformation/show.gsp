
<%@ page import="hrms.ApplicantInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'applicantInformation.label', default: 'ApplicantInformation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-applicantInformation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-applicantInformation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list applicantInformation">
			
				<g:if test="${applicantInformationInstance?.imagePath}">
				<li class="fieldcontain">
					<span id="imagePath-label" class="property-label"><g:message code="applicantInformation.imagePath.label" default="Image Path" /></span>
					
						<span class="property-value" aria-labelledby="imagePath-label"><g:fieldValue bean="${applicantInformationInstance}" field="imagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.applicantName}">
				<li class="fieldcontain">
					<span id="applicantName-label" class="property-label"><g:message code="applicantInformation.applicantName.label" default="Applicant Name" /></span>
					
						<span class="property-value" aria-labelledby="applicantName-label"><g:fieldValue bean="${applicantInformationInstance}" field="applicantName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.fatherName}">
				<li class="fieldcontain">
					<span id="fatherName-label" class="property-label"><g:message code="applicantInformation.fatherName.label" default="Father Name" /></span>
					
						<span class="property-value" aria-labelledby="fatherName-label"><g:fieldValue bean="${applicantInformationInstance}" field="fatherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.motherName}">
				<li class="fieldcontain">
					<span id="motherName-label" class="property-label"><g:message code="applicantInformation.motherName.label" default="Mother Name" /></span>
					
						<span class="property-value" aria-labelledby="motherName-label"><g:fieldValue bean="${applicantInformationInstance}" field="motherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.presentAddress}">
				<li class="fieldcontain">
					<span id="presentAddress-label" class="property-label"><g:message code="applicantInformation.presentAddress.label" default="Present Address" /></span>
					
						<span class="property-value" aria-labelledby="presentAddress-label"><g:fieldValue bean="${applicantInformationInstance}" field="presentAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.permanentAddress}">
				<li class="fieldcontain">
					<span id="permanentAddress-label" class="property-label"><g:message code="applicantInformation.permanentAddress.label" default="Permanent Address" /></span>
					
						<span class="property-value" aria-labelledby="permanentAddress-label"><g:fieldValue bean="${applicantInformationInstance}" field="permanentAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="applicantInformation.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${applicantInformationInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.cv}">
				<li class="fieldcontain">
					<span id="cv-label" class="property-label"><g:message code="applicantInformation.cv.label" default="Cv" /></span>
					
						<span class="property-value" aria-labelledby="cv-label"><g:fieldValue bean="${applicantInformationInstance}" field="cv"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.discardIndicator}">
				<li class="fieldcontain">
					<span id="discardIndicator-label" class="property-label"><g:message code="applicantInformation.discardIndicator.label" default="Discard Indicator" /></span>
					
						<span class="property-value" aria-labelledby="discardIndicator-label"><g:formatBoolean boolean="${applicantInformationInstance?.discardIndicator}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.approveIndicator}">
				<li class="fieldcontain">
					<span id="approveIndicator-label" class="property-label"><g:message code="applicantInformation.approveIndicator.label" default="Approve Indicator" /></span>
					
						<span class="property-value" aria-labelledby="approveIndicator-label"><g:formatBoolean boolean="${applicantInformationInstance?.approveIndicator}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.recruitmentDetails}">
				<li class="fieldcontain">
					<span id="recruitmentDetails-label" class="property-label"><g:message code="applicantInformation.recruitmentDetails.label" default="Recruitment Details" /></span>
					
						<span class="property-value" aria-labelledby="recruitmentDetails-label"><g:link controller="recruitmentDetails" action="show" id="${applicantInformationInstance?.recruitmentDetails?.id}">${applicantInformationInstance?.recruitmentDetails?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.serialNo}">
				<li class="fieldcontain">
					<span id="serialNo-label" class="property-label"><g:message code="applicantInformation.serialNo.label" default="Serial No" /></span>
					
						<span class="property-value" aria-labelledby="serialNo-label"><g:fieldValue bean="${applicantInformationInstance}" field="serialNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="applicantInformation.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${applicantInformationInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.experienceYears}">
				<li class="fieldcontain">
					<span id="experienceYears-label" class="property-label"><g:message code="applicantInformation.experienceYears.label" default="Experience Years" /></span>
					
						<span class="property-value" aria-labelledby="experienceYears-label"><g:fieldValue bean="${applicantInformationInstance}" field="experienceYears"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.experienceDetails}">
				<li class="fieldcontain">
					<span id="experienceDetails-label" class="property-label"><g:message code="applicantInformation.experienceDetails.label" default="Experience Details" /></span>
					
						<span class="property-value" aria-labelledby="experienceDetails-label"><g:fieldValue bean="${applicantInformationInstance}" field="experienceDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.honorsCGPA}">
				<li class="fieldcontain">
					<span id="honorsCGPA-label" class="property-label"><g:message code="applicantInformation.honorsCGPA.label" default="Honors CGPA" /></span>
					
						<span class="property-value" aria-labelledby="honorsCGPA-label"><g:fieldValue bean="${applicantInformationInstance}" field="honorsCGPA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.universityOrInstituteForHonors}">
				<li class="fieldcontain">
					<span id="universityOrInstituteForHonors-label" class="property-label"><g:message code="applicantInformation.universityOrInstituteForHonors.label" default="University Or Institute For Honors" /></span>
					
						<span class="property-value" aria-labelledby="universityOrInstituteForHonors-label"><g:fieldValue bean="${applicantInformationInstance}" field="universityOrInstituteForHonors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.durationForHonors}">
				<li class="fieldcontain">
					<span id="durationForHonors-label" class="property-label"><g:message code="applicantInformation.durationForHonors.label" default="Duration For Honors" /></span>
					
						<span class="property-value" aria-labelledby="durationForHonors-label"><g:fieldValue bean="${applicantInformationInstance}" field="durationForHonors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.msCGPA}">
				<li class="fieldcontain">
					<span id="msCGPA-label" class="property-label"><g:message code="applicantInformation.msCGPA.label" default="Ms CGPA" /></span>
					
						<span class="property-value" aria-labelledby="msCGPA-label"><g:fieldValue bean="${applicantInformationInstance}" field="msCGPA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.universityOrInstituteForMs}">
				<li class="fieldcontain">
					<span id="universityOrInstituteForMs-label" class="property-label"><g:message code="applicantInformation.universityOrInstituteForMs.label" default="University Or Institute For Ms" /></span>
					
						<span class="property-value" aria-labelledby="universityOrInstituteForMs-label"><g:fieldValue bean="${applicantInformationInstance}" field="universityOrInstituteForMs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.durationForMs}">
				<li class="fieldcontain">
					<span id="durationForMs-label" class="property-label"><g:message code="applicantInformation.durationForMs.label" default="Duration For Ms" /></span>
					
						<span class="property-value" aria-labelledby="durationForMs-label"><g:fieldValue bean="${applicantInformationInstance}" field="durationForMs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.skillSet}">
				<li class="fieldcontain">
					<span id="skillSet-label" class="property-label"><g:message code="applicantInformation.skillSet.label" default="Skill Set" /></span>
					
						<span class="property-value" aria-labelledby="skillSet-label"><g:link controller="skillSet" action="show" id="${applicantInformationInstance?.skillSet?.id}">${applicantInformationInstance?.skillSet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.sseCGPA}">
				<li class="fieldcontain">
					<span id="sseCGPA-label" class="property-label"><g:message code="applicantInformation.sseCGPA.label" default="Sse CGPA" /></span>
					
						<span class="property-value" aria-labelledby="sseCGPA-label"><g:fieldValue bean="${applicantInformationInstance}" field="sseCGPA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.schoolName}">
				<li class="fieldcontain">
					<span id="schoolName-label" class="property-label"><g:message code="applicantInformation.schoolName.label" default="School Name" /></span>
					
						<span class="property-value" aria-labelledby="schoolName-label"><g:fieldValue bean="${applicantInformationInstance}" field="schoolName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.passingYearForSSC}">
				<li class="fieldcontain">
					<span id="passingYearForSSC-label" class="property-label"><g:message code="applicantInformation.passingYearForSSC.label" default="Passing Year For SSC" /></span>
					
						<span class="property-value" aria-labelledby="passingYearForSSC-label"><g:fieldValue bean="${applicantInformationInstance}" field="passingYearForSSC"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.boardForSsc}">
				<li class="fieldcontain">
					<span id="boardForSsc-label" class="property-label"><g:message code="applicantInformation.boardForSsc.label" default="Board For Ssc" /></span>
					
						<span class="property-value" aria-labelledby="boardForSsc-label"><g:fieldValue bean="${applicantInformationInstance}" field="boardForSsc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.hseCGPA}">
				<li class="fieldcontain">
					<span id="hseCGPA-label" class="property-label"><g:message code="applicantInformation.hseCGPA.label" default="Hse CGPA" /></span>
					
						<span class="property-value" aria-labelledby="hseCGPA-label"><g:fieldValue bean="${applicantInformationInstance}" field="hseCGPA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.collegeName}">
				<li class="fieldcontain">
					<span id="collegeName-label" class="property-label"><g:message code="applicantInformation.collegeName.label" default="College Name" /></span>
					
						<span class="property-value" aria-labelledby="collegeName-label"><g:fieldValue bean="${applicantInformationInstance}" field="collegeName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.passingYearForHsc}">
				<li class="fieldcontain">
					<span id="passingYearForHsc-label" class="property-label"><g:message code="applicantInformation.passingYearForHsc.label" default="Passing Year For Hsc" /></span>
					
						<span class="property-value" aria-labelledby="passingYearForHsc-label"><g:fieldValue bean="${applicantInformationInstance}" field="passingYearForHsc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.boardForHsc}">
				<li class="fieldcontain">
					<span id="boardForHsc-label" class="property-label"><g:message code="applicantInformation.boardForHsc.label" default="Board For Hsc" /></span>
					
						<span class="property-value" aria-labelledby="boardForHsc-label"><g:fieldValue bean="${applicantInformationInstance}" field="boardForHsc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.subjectForHonors}">
				<li class="fieldcontain">
					<span id="subjectForHonors-label" class="property-label"><g:message code="applicantInformation.subjectForHonors.label" default="Subject For Honors" /></span>
					
						<span class="property-value" aria-labelledby="subjectForHonors-label"><g:fieldValue bean="${applicantInformationInstance}" field="subjectForHonors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.subjectForMs}">
				<li class="fieldcontain">
					<span id="subjectForMs-label" class="property-label"><g:message code="applicantInformation.subjectForMs.label" default="Subject For Ms" /></span>
					
						<span class="property-value" aria-labelledby="subjectForMs-label"><g:fieldValue bean="${applicantInformationInstance}" field="subjectForMs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.examCenter}">
				<li class="fieldcontain">
					<span id="examCenter-label" class="property-label"><g:message code="applicantInformation.examCenter.label" default="Exam Center" /></span>
					
						<span class="property-value" aria-labelledby="examCenter-label"><g:fieldValue bean="${applicantInformationInstance}" field="examCenter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.indicatorForAdmitCard}">
				<li class="fieldcontain">
					<span id="indicatorForAdmitCard-label" class="property-label"><g:message code="applicantInformation.indicatorForAdmitCard.label" default="Indicator For Admit Card" /></span>
					
						<span class="property-value" aria-labelledby="indicatorForAdmitCard-label"><g:formatBoolean boolean="${applicantInformationInstance?.indicatorForAdmitCard}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.sscGpaForRecom}">
				<li class="fieldcontain">
					<span id="sscGpaForRecom-label" class="property-label"><g:message code="applicantInformation.sscGpaForRecom.label" default="Ssc Gpa For Recom" /></span>
					
						<span class="property-value" aria-labelledby="sscGpaForRecom-label"><g:fieldValue bean="${applicantInformationInstance}" field="sscGpaForRecom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.hseGpaForRecom}">
				<li class="fieldcontain">
					<span id="hseGpaForRecom-label" class="property-label"><g:message code="applicantInformation.hseGpaForRecom.label" default="Hse Gpa For Recom" /></span>
					
						<span class="property-value" aria-labelledby="hseGpaForRecom-label"><g:fieldValue bean="${applicantInformationInstance}" field="hseGpaForRecom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.honorGpaForRecom}">
				<li class="fieldcontain">
					<span id="honorGpaForRecom-label" class="property-label"><g:message code="applicantInformation.honorGpaForRecom.label" default="Honor Gpa For Recom" /></span>
					
						<span class="property-value" aria-labelledby="honorGpaForRecom-label"><g:fieldValue bean="${applicantInformationInstance}" field="honorGpaForRecom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.msGpaForRecom}">
				<li class="fieldcontain">
					<span id="msGpaForRecom-label" class="property-label"><g:message code="applicantInformation.msGpaForRecom.label" default="Ms Gpa For Recom" /></span>
					
						<span class="property-value" aria-labelledby="msGpaForRecom-label"><g:fieldValue bean="${applicantInformationInstance}" field="msGpaForRecom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.communicationSkillForRecom}">
				<li class="fieldcontain">
					<span id="communicationSkillForRecom-label" class="property-label"><g:message code="applicantInformation.communicationSkillForRecom.label" default="Communication Skill For Recom" /></span>
					
						<span class="property-value" aria-labelledby="communicationSkillForRecom-label"><g:fieldValue bean="${applicantInformationInstance}" field="communicationSkillForRecom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.problemSolvingSkillForRecom}">
				<li class="fieldcontain">
					<span id="problemSolvingSkillForRecom-label" class="property-label"><g:message code="applicantInformation.problemSolvingSkillForRecom.label" default="Problem Solving Skill For Recom" /></span>
					
						<span class="property-value" aria-labelledby="problemSolvingSkillForRecom-label"><g:fieldValue bean="${applicantInformationInstance}" field="problemSolvingSkillForRecom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.experienceForRecom}">
				<li class="fieldcontain">
					<span id="experienceForRecom-label" class="property-label"><g:message code="applicantInformation.experienceForRecom.label" default="Experience For Recom" /></span>
					
						<span class="property-value" aria-labelledby="experienceForRecom-label"><g:fieldValue bean="${applicantInformationInstance}" field="experienceForRecom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInformationInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="applicantInformation.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${applicantInformationInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:applicantInformationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${applicantInformationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
