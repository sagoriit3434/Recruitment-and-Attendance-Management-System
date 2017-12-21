package hrms

class AvailAblePosition {
    String positionName, positionDetails

    static constraints = {
        positionName nullable: false
        positionDetails nullable: true
    }
}
