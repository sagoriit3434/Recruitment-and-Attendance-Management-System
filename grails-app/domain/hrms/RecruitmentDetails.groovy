package hrms

class RecruitmentDetails {
    String age
    Integer numberOfVacancy
    String experience
    String constrains
    String facilities
    String jobDetails
    Date lastDateForApply
    Position position
    Date    examDate
    String  examTime
    String lastDateForApplyInString
    String examDateInString



    static constraints = {
        age nullable: false
        numberOfVacancy nullable: false
        experience nullable: false
        constrains nullable: false
        facilities nullable: false
        jobDetails nullable: false
        lastDateForApply nullable: false
        examDate nullable : false
        examTime nullable : false
        lastDateForApplyInString nullable : true
        examDateInString nullable : true

    }
}
