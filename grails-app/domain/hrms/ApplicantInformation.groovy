package hrms

class ApplicantInformation {
    String applicantName
    String fatherName
    String motherName
    String presentAddress
    String permanentAddress
    String emailAddress
    String cv
    String imagePath
    boolean discardIndicator
    boolean approveIndicator
    RecruitmentDetails recruitmentDetails
    String serialNo
    Gender gender
    Date dateOfBirth


    Double experienceYears
    String experienceDetails


    Double honorsCGPA
    String universityOrInstituteForHonors
    String durationForHonors
    String subjectForHonors



    Double msCGPA
    String universityOrInstituteForMs
    String durationForMs
    String subjectForMs


    Double sseCGPA
    String schoolName
    String passingYearForSSC
    String boardForSsc


    Double hseCGPA
    String collegeName
    String passingYearForHsc
    String boardForHsc

    SkillSet skillSet

    String  examCenter
    boolean indicatorForAdmitCard


    Double sscGpaForRecom
    Double hseGpaForRecom
    Double honorGpaForRecom
    Double msGpaForRecom
    Double communicationSkillForRecom
    Double problemSolvingSkillForRecom
    Double experienceForRecom


    static constraints = {
        imagePath nullable: true
        applicantName nullable: false
        fatherName nullable: true
        motherName nullable: true
        presentAddress nullable: false
        permanentAddress nullable: false
        emailAddress nullable: false
        cv nullable: true
        discardIndicator nullable: false
        approveIndicator nullable: false
        recruitmentDetails nullable: false
        serialNo nullable: false
        gender nullable: false

        //Experience
        experienceYears  nullable: false
        experienceDetails  nullable: true

        honorsCGPA nullable: true
        universityOrInstituteForHonors nullable: true
        durationForHonors nullable: true
        msCGPA nullable: true
        universityOrInstituteForMs nullable: true
        durationForMs nullable: true
        skillSet nullable: true
        sseCGPA nullable: true
        schoolName nullable: true
        passingYearForSSC nullable: true
        boardForSsc nullable: true
        hseCGPA nullable: true
        collegeName nullable: true
        passingYearForHsc nullable: true
        boardForHsc nullable: true
        subjectForHonors nullable: true
        subjectForMs nullable: true

        examCenter nullable: true
        indicatorForAdmitCard nullable: true
        sscGpaForRecom nullable: false
        hseGpaForRecom nullable: false
        honorGpaForRecom nullable: false
        msGpaForRecom nullable: false
        communicationSkillForRecom nullable: false
        problemSolvingSkillForRecom nullable: false
        experienceForRecom nullable: false
        dateOfBirth nullable: true

    }
}
