package hrms



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AttendanceInformationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AttendanceInformation.list(params), model:[attendanceInformationInstanceCount: AttendanceInformation.count()]
    }

    def show(AttendanceInformation attendanceInformationInstance) {
        respond attendanceInformationInstance
    }

    def create() {
        respond new AttendanceInformation(params)
    }

    @Transactional
    def save(AttendanceInformation attendanceInformationInstance) {
        if (attendanceInformationInstance == null) {
            notFound()
            return
        }

        if (attendanceInformationInstance.hasErrors()) {
            respond attendanceInformationInstance.errors, view:'create'
            return
        }

        attendanceInformationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'attendanceInformation.label', default: 'AttendanceInformation'), attendanceInformationInstance.id])
                redirect attendanceInformationInstance
            }
            '*' { respond attendanceInformationInstance, [status: CREATED] }
        }
    }

    def edit(AttendanceInformation attendanceInformationInstance) {
        respond attendanceInformationInstance
    }

    @Transactional
    def update(AttendanceInformation attendanceInformationInstance) {
        if (attendanceInformationInstance == null) {
            notFound()
            return
        }

        if (attendanceInformationInstance.hasErrors()) {
            respond attendanceInformationInstance.errors, view:'edit'
            return
        }

        attendanceInformationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AttendanceInformation.label', default: 'AttendanceInformation'), attendanceInformationInstance.id])
                redirect attendanceInformationInstance
            }
            '*'{ respond attendanceInformationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AttendanceInformation attendanceInformationInstance) {

        if (attendanceInformationInstance == null) {
            notFound()
            return
        }

        attendanceInformationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AttendanceInformation.label', default: 'AttendanceInformation'), attendanceInformationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    def attendance(){

    }

    def validateUserCredentialForAttendance() {

        User user = User.findByUserNameAndPassword(params?.userName, params?.password);
        if(!user){
            render(view: "attendance",  model: [message1:"Sorry !!! Something went wrong."])
            return

        }
        if(params?.optradio == "entry"){
            Date date = new Date();

            String d = String.valueOf(date)

            AttendanceInformation attendanceInformationInstance1 = AttendanceInformation.findByUserAndFlag(user, true);
            if(attendanceInformationInstance1){
                render(view: "attendance",  model: [message1: "Your have already entered entry time."])
                return
            }

            AttendanceInformation attendanceInformationInstance = new AttendanceInformation();
            attendanceInformationInstance.user = user;

            attendanceInformationInstance.entryTime =  d.substring(11, 19);

            attendanceInformationInstance.date = d.substring(0, 3)+" "+d.substring(4, 7)+" "+d.substring(8, 10)+" "+d.substring(24);
            attendanceInformationInstance.day= Integer.valueOf(d.substring(8, 10));

            attendanceInformationInstance.flag = true;// true mane entry dise aj...especially user er current din ta janar jonno
            attendanceInformationInstance.save flush:true
            render(view: "attendance",  model: [message:"Your entry time is successfully recorded."])
        }else{
            AttendanceInformation attendanceInformationInstance = AttendanceInformation.findByUserAndFlag(user, true);
            if(!attendanceInformationInstance){
                render(view: "attendance",  model: [message1:"Either missing entry time or entering exit time previously."])
                return

            }
            attendanceInformationInstance.flag = false
            attendanceInformationInstance.exitTime =  String.valueOf(new Date()).substring(11, 19);
            attendanceInformationInstance.save flush:true
            render(view: "attendance",  model: [message:"Your exit time is successfully recorded."])



        }




    }





    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'attendanceInformation.label', default: 'AttendanceInformation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
