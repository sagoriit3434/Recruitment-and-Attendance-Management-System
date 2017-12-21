package hrms

class Position {
    String positionName, positionDetails

    static constraints = {
        positionName nullable: false
        positionDetails nullable: true
    }
}
