package hrms

class User {
    String userName, password, role, profilePicture, firstName, lastName, designation, presentAddress, permanentAddress, education, aboutUser
    Date dateOfBirth, joiningDate



    static constraints = {
        userName nullable: false
        password nullable: false
        role nullable: false
        profilePicture nullable: true
        firstName nullable: true
        lastName nullable: true
        designation nullable: true
        dateOfBirth nullable : true
        presentAddress nullable: true
        permanentAddress nullable: true
        joiningDate nullable: true
        education nullable: true
        aboutUser nullable: true



    }
}
