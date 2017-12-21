package hrms

class SkillSet {
    Double workEthic
    Double communicationSkills
    Double problemSolvingSkills

    static constraints = {
        workEthic nullable: true
        communicationSkills nullable: true
        problemSolvingSkills nullable: true
    }
}
