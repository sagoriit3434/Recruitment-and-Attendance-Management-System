package hrms

import javax.servlet.http.Cookie
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON


@Transactional(readOnly = false)
class RecruitmentDetailsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RecruitmentDetails.list(params), model:[recruitmentDetailsInstanceCount: RecruitmentDetails.count()]
    }

    def show(RecruitmentDetails recruitmentDetailsInstance) {
        respond recruitmentDetailsInstance
    }

    def create() {
        respond new RecruitmentDetails(params)
    }

    @Transactional
    def save(RecruitmentDetails recruitmentDetailsInstance) {
        if (recruitmentDetailsInstance == null) {
            notFound()
            return
        }

        if (recruitmentDetailsInstance.hasErrors()) {
            respond recruitmentDetailsInstance.errors, view:'create'
            return
        }

        recruitmentDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recruitmentDetails.label', default: 'RecruitmentDetails'), recruitmentDetailsInstance.id])
                redirect recruitmentDetailsInstance
            }
            '*' { respond recruitmentDetailsInstance, [status: CREATED] }
        }
    }

    def edit(RecruitmentDetails recruitmentDetailsInstance) {
        respond recruitmentDetailsInstance
    }

    @Transactional
    def update(RecruitmentDetails recruitmentDetailsInstance) {
        if (recruitmentDetailsInstance == null) {
            notFound()
            return
        }

        if (recruitmentDetailsInstance.hasErrors()) {
            respond recruitmentDetailsInstance.errors, view:'edit'
            return
        }

        recruitmentDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RecruitmentDetails.label', default: 'RecruitmentDetails'), recruitmentDetailsInstance.id])
                redirect recruitmentDetailsInstance
            }
            '*'{ respond recruitmentDetailsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RecruitmentDetails recruitmentDetailsInstance) {

        if (recruitmentDetailsInstance == null) {
            notFound()
            return
        }

        recruitmentDetailsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RecruitmentDetails.label', default: 'RecruitmentDetails'), recruitmentDetailsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }


    User checkUserByUserID(){
       User user = User.get(Long.valueOf(params?.userId))

        return user;
    }


    def addRecruitmentDetails(){

        User user = checkUserByUserID();

        [user : user, recruitmentDetailsInstance : new RecruitmentDetails(params)]

    }

    def saveRecruitmentDetails(RecruitmentDetails recruitmentDetailsInstance){
        String minAge, maxAge, examHour, examMins, examAMorPM
        if (recruitmentDetailsInstance == null) {
            notFound()
            return
        }
        if(params?.minimumAge){
            minAge =  params.minimumAge
            maxAge = params.maximumAge
            recruitmentDetailsInstance.age = params.minimumAge+"-"+params.maximumAge
        }
        examHour = params?.examHour
        examMins = params?.examMins
        examAMorPM = params?.examAMorPM
        recruitmentDetailsInstance.examTime = examHour +" : " +examMins + " "+examAMorPM
        String examDate = String.valueOf(recruitmentDetailsInstance?.examDate).substring(0,10) +" "+ String.valueOf(recruitmentDetailsInstance?.examDate).substring(24)
        String lastDateForApply = String.valueOf(recruitmentDetailsInstance?.lastDateForApply).substring(0,10) +" "+ String.valueOf(recruitmentDetailsInstance?.lastDateForApply).substring(24)

        recruitmentDetailsInstance.lastDateForApplyInString = lastDateForApply
        recruitmentDetailsInstance.examDateInString = examDate

        recruitmentDetailsInstance.validate();

        if (recruitmentDetailsInstance.hasErrors()) {
            respond recruitmentDetailsInstance.errors, view:'create'
            return
        }


        recruitmentDetailsInstance.save flush:true

        User user = checkUserByUserID();

        render(view: 'viewRecruitmentDetails', model: [recruitmentDetailsInstance : recruitmentDetailsInstance, examDate : examDate, user : user, lastDateForApply: lastDateForApply])

        return


    }


    def listOfAllAvailAbleRecruitmentOffer(Integer max){
        params.max = Math.min(max ?: 5, 10);

        User user = checkUserByUserID()

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
        String dateOfToday = dateWithFormat()
        def listOfRecruitmentDetails1 = RecruitmentDetails.list()
        def listOfRecruitmentDetails = new ArrayList<>();


        for(RecruitmentDetails recruitmentDetails1 : listOfRecruitmentDetails1){
            if(sdf.parse(String.valueOf(recruitmentDetails1.examDate)).compareTo(sdf.parse(dateOfToday)) >= 0){
                listOfRecruitmentDetails.add(recruitmentDetails1)
            }

        }



        [listOfRecruitmentDetails : listOfRecruitmentDetails, recruitmentDetailsInstanceCount : listOfRecruitmentDetails.size(), user:user]


    }

    def viewRecruitmentDetails(RecruitmentDetails recruitmentDetailsInstance){
        String lastDateForApply = String.valueOf(recruitmentDetailsInstance?.lastDateForApply).substring(0,10)
        String examDate = String.valueOf(recruitmentDetailsInstance?.examDate).substring(0,10)
        [recruitmentDetailsInstance : recruitmentDetailsInstance, lastDateOfApplication:String.valueOf(recruitmentDetailsInstance?.lastDateForApply).substring(0,10),examDate : examDate, user : User.get(Long.valueOf(params?.userId)), lastDateForApply : lastDateForApply]

    }

    def editRecruitmentDetails(RecruitmentDetails recruitmentDetailsInstance){
        String age = recruitmentDetailsInstance.age
        String examTime = recruitmentDetailsInstance.examTime

        String minAge = age.substring(0,2)
        String  maxAge = age.substring(3)
        String   examHour, examMins, examAMorPM

        if(examTime.size() == 10){
               examHour = examTime.substring(0,2)
               examMins = examTime.substring(5,7)
               examAMorPM = examTime.substring(8)


        }else{
               examHour = examTime.substring(0,1)
               examMins = examTime.substring(4,6)
               examAMorPM = examTime.substring(7)

        }

        User user = checkUserByUserID()

        [recruitmentDetailsInstance:recruitmentDetailsInstance, minAge:minAge, maxAge:maxAge, examHour : examHour, examMins : examMins, examAMorPM: examAMorPM, user : user]

    }

    def deleteRecruitmentDetails(RecruitmentDetails recruitmentDetailsInstance){
        User user = checkUserByUserID()

        recruitmentDetailsInstance.delete flush:true
        flash.success = "You have successfully deleted the recruitment offer...."


        def listOfRecruitmentDetails = RecruitmentDetails.list()
//        [listOfRecruitmentDetails : listOfRecruitmentDetails, recruitmentDetailsInstanceCount : listOfRecruitmentDetails.size()]

        render(view: 'listOfAllAvailAbleRecruitmentOffer', model: [user : user, message : "You have successfully deleted the recruitment offer...", listOfRecruitmentDetails : listOfRecruitmentDetails, recruitmentDetailsInstanceCount : listOfRecruitmentDetails.size()])



    }


    String dateWithFormat(){
        Date today = new Date();
        String day = String.valueOf(new Date()).substring(8,10)
        String month = String.valueOf(new Date()).substring(4, 7);
        String year = String.valueOf(new Date()).substring(24)
        if(month.equals("Jan")){
            month = "01";
        }
        else if(month.equals("Feb")){
            month = "02"

        }
        else if(month.equals("Mar")){
            month = "03"

        }
        else if(month.equals("Apr")){
            month = "04"

        }
        else if(month.equals("May")){
            month = "05"

        }
        else if(month.equals("Jun")){
            month = "06"

        }
        else if(month.equals("Jul")){
            month = "07"

        }
        else if(month.equals("Aug")){
            month = "08"

        }
        else if(month.equals("Sep")){
            month = "09"

        }
        else if(month.equals("Oct")){
            month = "10"

        }
        else if(month.equals("Nov")){
            month = "11"

        }
        else if(month.equals("Dec")){
            month = "12"

        }

        String xx =year+"-"+month+"-"+day
        return xx;

    }

    // It should be placed in the applicant controller
    def viewAvailAbleJobs(){
        def listOfRecruitmentDetails = new ArrayList();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")

        def availAbleOffer = RecruitmentDetails.list()

        String dateOfToday = dateWithFormat()


        for(RecruitmentDetails listOfRecruitmentDetailsInstance : availAbleOffer){
            if(sdf.parse(String.valueOf(listOfRecruitmentDetailsInstance.lastDateForApply)).compareTo(sdf.parse(dateOfToday)) >= 0)
                listOfRecruitmentDetails.add(listOfRecruitmentDetailsInstance)
        }

        [listOfRecruitmentDetails : listOfRecruitmentDetails]

    }

    def viewJobDetails(RecruitmentDetails recruitmentDetailsInstance){
        def jobDetls = recruitmentDetailsInstance.jobDetails.replaceAll("<p>","")
        jobDetls = jobDetls.replaceAll("</p>","")

        def jobExp = recruitmentDetailsInstance.experience.replaceAll("<p>","")
        jobExp = jobExp.replaceAll("<br>","")
        jobExp = jobExp.replaceAll("</p>","\r\n")

        def jobCons = recruitmentDetailsInstance.constrains.replaceAll("<p>","")
        jobCons = jobCons.replaceAll("<br>","")
        jobCons = jobCons.replaceAll("</p>","\r\n")

        def jobFac = recruitmentDetailsInstance.facilities.replaceAll("<p>","")
        jobFac = jobFac.replaceAll("<br>","")
        jobFac = jobFac.replaceAll("</p>","\r\n")

        [recruitmentDetailsInstance : recruitmentDetailsInstance, jobDetls : jobDetls, jobExp : jobExp, jobCons : jobCons, jobFac: jobFac, lastDateOfApplication:String.valueOf(recruitmentDetailsInstance?.lastDateForApply).substring(0,10)]


    }

//
//    def viewAddressDetails(){
//        LinkedHashMap addressInfo = new LinkedHashMap()
//        String output
//        Address address = Address.get(params.addressId)
//        addressInfo.put('address',address)
//        output = addressInfo as JSON
//        render output
//        return
//
//    }

    def checkDuplicacyOfThisPost(){
        LinkedHashMap postInfo = new LinkedHashMap()
        String output



        def listOfRecruitmentDetails = new ArrayList();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")

        def availAbleOffer = RecruitmentDetails.list()

        String dateOfToday = dateWithFormat()


        for(RecruitmentDetails listOfRecruitmentDetailsInstance : availAbleOffer){
            if(sdf.parse(String.valueOf(listOfRecruitmentDetailsInstance.lastDateForApply)).compareTo(sdf.parse(dateOfToday)) >= 0)
                listOfRecruitmentDetails.add(listOfRecruitmentDetailsInstance)
        }





        boolean flag = true;
        for(RecruitmentDetails listOfRecruitmentDetailsInstance : listOfRecruitmentDetails){
            if(listOfRecruitmentDetailsInstance.position.id == Long.valueOf(params.input) && sdf.parse(String.valueOf(listOfRecruitmentDetailsInstance?.lastDateForApply)).compareTo(sdf.parse(dateOfToday)) >= 0)
                flag = false;
            postInfo.put('availAble',true);

            break;
        }

        if(flag){
            postInfo.put('availAble',false)
        }

        output = postInfo as JSON
        render output
        return





    }



    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recruitmentDetails.label', default: 'RecruitmentDetails'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
