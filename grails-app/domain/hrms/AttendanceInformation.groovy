package hrms

class AttendanceInformation {
    User user;
    String entryTime, exitTime
    boolean flag
    String date
    Integer day // It means 1 -31




    static constraints = {
        user nullable: false
        entryTime nullable: false
        exitTime nullable: true
        flag nullable: false
        date nullable: false
        day nullable: false
    }
}
