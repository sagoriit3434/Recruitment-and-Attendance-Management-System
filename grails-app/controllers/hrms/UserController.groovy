package hrms



import com.google.common.collect.Lists
import grails.converters.JSON

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




@Transactional(readOnly = false)
class UserController {
    def fileService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }



    def createUser(){

        def userInstanceList = User.list()
        [userInstanceList: userInstanceList]

    }

    def formTemplate(){

        def id = params?.id;

        def user = User.get(Long.valueOf(id))

        [user : user]

    }

    def create() {


        [userInstance : new User(params)]
//        respond new User(params)
    }

    def general(){}

    @Transactional
    def saveProfileInformation(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.dateOfBirth =Date.parse('yyyy-MM-dd', params?.dateOfBirth)
        userInstance.joiningDate =Date.parse('yyyy-MM-dd', params?.joiningDate)

        userInstance.validate()
        userInstance.clearErrors()


        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        String imageName = ""
        if(params?.imagePath.size > 0){
            imageName = fileService.uploadFile("user", "user_image", "user_name", "any", 1, 2014000, params?.imagePath)
            userInstance.profilePicture = imageName

        }


        userInstance.save flush:true

        String dateofBirth, joiningDate;



        if(userInstance?.dateOfBirth){
            dateofBirth = String.valueOf(userInstance?.dateOfBirth).substring(0,10)

        }

        if(userInstance?.joiningDate){
            joiningDate = String.valueOf(userInstance?.joiningDate).substring(0,10)


        }



        render(view: 'viewProfile', model:[user : userInstance, dateofBirth: dateofBirth, joiningDate : joiningDate] )

    }



    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }




    def edit(User userInstance) {
        respond userInstance


    }

    def validateUserCredential(){
        User user = User.findByUserNameAndPassword(params.userName, params.password)



        if(user?.role == "hr"){
            Cookie ck=new Cookie("userId","${user?.id}");//deleting value of cookie
            response.addCookie(ck)

            render(view: 'formTemplate', model: [id: {user?.id}, user : user])

            return ;

        }else if(user?.role == "employee"){
            Cookie ck=new Cookie("userId","${user?.id}");//deleting value of cookie
            response.addCookie(ck)

            render(view: 'formTemplateForEmployee', model: [id: {user?.id}, user : user])

            return ;

        }




        render(view: 'signIn', model: [message:"Invalid either username or password or both."])






    }


    def signIn(){
        for(int i = 0; i<3; i++)
            System.out.print("fkg");

    }

    def signIn1(){

    }

    User checkUser(){
            User user;
        def ck = request.getCookies();

        for(Cookie cookie : ck){
            if(cookie.value == params?.id){
                user = User.get(Long.valueOf(params?.id))
                break;
            }

        }
        return user;
    }

    def signOut(){
        def ck = request.getCookies();

        for(Cookie cookie : ck){
            if(cookie.value == params?.userId){
                cookie.value = false
                cookie.maxAge = 0
                response.addCookie(cookie)

                redirect(uri:'/')

                return



            }

        }

//        User user = User.get(Long.valueOf(ck[0]?.getValue()))


    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }


    def viewProfile(){
        String dateofBirth, joiningDate;


        User user = checkUser();

        if(user?.dateOfBirth){
            dateofBirth = String.valueOf(user?.dateOfBirth).substring(0,10)

        }

        if(user?.joiningDate){
            joiningDate = String.valueOf(user?.joiningDate).substring(0,10)


        }

        [user : user, dateofBirth: dateofBirth, joiningDate : joiningDate]

    }
    def editProfile(){

        User user = checkUser();

        [userInstance : user, user:user, dateOfBirth : String.valueOf(user?.dateOfBirth).substring(0,10), joiningDate : String.valueOf(user?.joiningDate).substring(0,10)]

    }


    def addEmployee(){
        User user = checkUser();

        if(user == null){
            render(view: 'signIn', model: [message:"Something went wrong. Log in first."])

            return

        }
        [user : user]


    }

    def addPosition(){
        User user = checkUser();
        if(user == null){
            render(view: 'signIn', model: [message:"Something went wrong. Log in first."])

            return

        }

        [user : user]



    }

    def saveAvailAblePosition(Position positionInstance){
        User user = User.get(Long.valueOf(params?.userId));
        if(user == null){
            render(view: 'signIn', model: [message:"Something went wrong. Log in first."])

            return

        }

        if (positionInstance == null) {
            notFound()
            return
        }

        positionInstance.validate()
        positionInstance.clearErrors()
        if (positionInstance.hasErrors()) {
            respond positionInstance.errors, view:'create'
            return
        }

        positionInstance.save flush:true
        render(view: 'listOfAvailablePosition', model: [message : "You have successfully added position information...", availAblePositionInstanceList : Position.list(), user : user])



    }

    def checkDuplicacyOfPosition(){
        LinkedHashMap postInfo = new LinkedHashMap()
        String output

        Position position = Position.findByPositionName(params?.input)
        if(position){
            postInfo.put('availAble',true)
        }else  postInfo.put('availAble',false)

        output = postInfo as JSON
        render output
        return
    }

    def editAvailablePositionTemplate(Position positionInstance){
        User user = User.get(Long.valueOf(params?.userId));
        if(user == null){
            render(view: 'signIn', model: [message:"Something went wrong. Log in first."])

            return

        }

        [positionInstance : positionInstance, user : user]

    }

    def listOfAvailablePosition(){
        User user = checkUser();
        if(user == null){
            render(view: 'signIn', model: [message:"Something went wrong. Log in first."])

            return

        }

        [availAblePositionInstanceList : Position.list(), user : user]
    }


    def editAvailablePosition(Position positionInstance){

        User user = User.get(Long.valueOf(params?.userId));
        if(user == null){
            render(view: 'signIn', model: [message:"Something went wrong. Log in first."])

            return

        }



        if (positionInstance == null) {
            notFound()
            return
        }

        positionInstance.validate()
        positionInstance.clearErrors()
        if (positionInstance.hasErrors()) {
            respond positionInstance.errors, view:'edit'
            return
        }

        positionInstance.save flush:true
        render(view: 'listOfAvailablePosition', model: [message : "You have successfully updated position information...", availAblePositionInstanceList : Position.list(), user : user])


    }

    def deleteAvailablePosition(Position positionInstance){
        User user = User.get(Long.valueOf(params?.userId))
        if(user == null){
            render(view: 'signIn', model: [message:"Something went wrong. Log in first."])

            return

        }


        if (positionInstance == null) {
            notFound()
            return
        }

        positionInstance.delete flush:true
        render(view: 'listOfAvailablePosition', model: [message : "You have successfully daleted position information...", availAblePositionInstanceList : Position.list(), user : user])




    }

    @Transactional
    def saveEmployeeInformation(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }
        String imageName = fileService.uploadFile("user", "user_image", "user_name", "any", 1, 2014000, params?.imagePath)
        userInstance.profilePicture = imageName


        userInstance.save flush:true
        def numberOfUser = User.list();

        User user;
        def ck = request.getCookies();

        for(Cookie cookie : ck){
            if(cookie.value == params?.userId){
                user = User.get(Long.valueOf(params?.userId))
                break;
            }

        }


        render(view: 'listOfEmployee', model: [message : "You have successfully added employee information...", userInstanceList : numberOfUser, user : user])

//        redirect(uri: "/user/listOfEmployee");
//        return

    }

    def listOfEmployee(){
        User user = checkUser();

        def numberOfUser = User.list();
        [userInstanceList : numberOfUser, user : user]

    }

    @Transactional
    def deleteEmployeeInformation(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true
        User user = checkUserByUserID()



        render(view: 'listOfEmployee', model: [message : "You have successfully deleted employee information...", userInstanceList : User.list(), user : user])

    }

    @Transactional

    def viewAllEmployeeInformationOneByOne(User userInstance){
        User user = checkUserByUserID()
        String dateofBirth, joiningDate;



        if(userInstance?.dateOfBirth){
            dateofBirth = String.valueOf(userInstance?.dateOfBirth).substring(0,10)

        }

        if(userInstance?.joiningDate){
            joiningDate = String.valueOf(userInstance?.joiningDate).substring(0,10)


        }


        [userInstance: userInstance, user : user, dateofBirth : dateofBirth, joiningDate:joiningDate]
    }

    User checkUserByUserID(){
        User user;
        def ck = request.getCookies();

        for(Cookie cookie : ck){
            if(cookie.value == params?.userId){
                user = User.get(Long.valueOf(params?.userId))
                break;
            }

        }
        return user;
    }



    def applicantList(){
        User user =  User.get(Long.valueOf(params?.userId));

        def approvedApplicantList
        if(params?.search){
            approvedApplicantList=ApplicantInformation.createCriteria().list(params) {
                eq("recruitmentDetails", RecruitmentDetails.findByPosition(AvailAblePosition.valueOf(params?.position)))
//                eq("discardIndicator", true)
//                eq("approveIndicator", true)

            }
        }else{
//            approvedApplicantList = ApplicantInformation.createCriteria().list(params) {
//                eq("discardIndicator", true)
//                eq("approveIndicator", true)
//
//            }

            approvedApplicantList = ApplicantInformation.list()

        }
        [user : user]

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


    def availAblePositionForViewingApplicantList(){


        def availablerecruitmentDetailsList = RecruitmentDetails.findAllByPosition(Position.get(Long.valueOf(params?.position)))
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
        String dateOfToday = dateWithFormat()
        def listOfApplicantList = new ArrayList();



        for(RecruitmentDetails listOfRecruitmentDetailsInstance : availablerecruitmentDetailsList){
            if(sdf.parse(String.valueOf(listOfRecruitmentDetailsInstance?.examDate)).compareTo(sdf.parse(dateOfToday)) >= 0)
                listOfApplicantList.add(listOfRecruitmentDetailsInstance)
        }
        User user = User.get(Long.valueOf(params?.userId));

        render(view : 'applicantList', model: [availablerecruitmentDetailsList: listOfApplicantList, user : user, position : params?.position])

    }

    def viewAllApplicantForARecruitDetails(RecruitmentDetails recruitmentDetailsInstance){
        User user = User.get(Long.valueOf(params?.userId));
        def applicantList = ApplicantInformation.findAllByRecruitmentDetails(recruitmentDetailsInstance)
        int count = applicantList.size()

        [user : user, recruitmentDetailsInstance : recruitmentDetailsInstance, applicantList : applicantList, applicantInstanceCount : count]


    }

    def confirmed_Applicant_List(Integer max){
        User user =  User.get(Long.valueOf(params?.userId));

//        params.max = 10
//       def applicantList
//        if(params?.search){
//            applicantList =  ApplicantInformation.createCriteria().list(params) {
//                eq("recruitmentDetails", RecruitmentDetails.findByPosition(AvailAblePosition.valueOf(params?.position)))
//                eq("approveIndicator", true)
//            }
//        }else{
//            applicantList = ApplicantInformation.findAllByApproveIndicator(true)
//
//        }

        [user:user]

    }


    def availAblePositionForViewingApprovedApplicantList(){
        def availablerecruitmentDetailsList = RecruitmentDetails.findAllByPosition(Position.get(Long.valueOf(params?.position)))
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
        String dateOfToday = dateWithFormat()
        def listOfApplicantList = new ArrayList();



        for(RecruitmentDetails listOfRecruitmentDetailsInstance : availablerecruitmentDetailsList){
            if(sdf.parse(String.valueOf(listOfRecruitmentDetailsInstance?.examDate)).compareTo(sdf.parse(dateOfToday)) >= 0)
                listOfApplicantList.add(listOfRecruitmentDetailsInstance)
        }
        User user = User.get(Long.valueOf(params?.userId));

        render(view : 'confirmed_Applicant_List', model: [availablerecruitmentDetailsList: listOfApplicantList, user : user, position : params?.position])


    }

    def viewAllApprovedApplicantForARecruitDetails(RecruitmentDetails recruitmentDetailsInstance){
        User user = User.get(Long.valueOf(params?.userId));
//        def applicantList = ApplicantInformation.findAllByRecruitmentDetails(recruitmentDetailsInstance)
        def applicantList = ApplicantInformation.findAllByRecruitmentDetailsAndApproveIndicator(recruitmentDetailsInstance, true)
        int count = applicantList.size()

        [user : user, recruitmentDetailsInstance : recruitmentDetailsInstance, applicantList : applicantList, applicantInstanceCount : count]

    }

    def rejected_Applicant_List(Integer max){
        User user = User.get(Long.valueOf(params?.userId));

//        params.max = 10
//        def applicantList
//        if(params?.search){
//            applicantList =  ApplicantInformation.createCriteria().list(params) {
//                eq("recruitmentDetails", RecruitmentDetails.findByPosition(AvailAblePosition.valueOf(params?.position)))
//                eq("discardIndicator", true)
//            }
//        }else{
//            applicantList = ApplicantInformation.findAllByDiscardIndicator(true)
//
//        }

        [user:user]

    }

    def availAblePositionForViewingRejectedApplicantList(){
        def availablerecruitmentDetailsList = RecruitmentDetails.findAllByPosition(Position.get(Long.valueOf(params?.position)))
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
        String dateOfToday = dateWithFormat()
        def listOfApplicantList = new ArrayList();



        for(RecruitmentDetails listOfRecruitmentDetailsInstance : availablerecruitmentDetailsList){
            if(sdf.parse(String.valueOf(listOfRecruitmentDetailsInstance?.examDate)).compareTo(sdf.parse(dateOfToday)) >= 0)
                listOfApplicantList.add(listOfRecruitmentDetailsInstance)
        }
        User user = User.get(Long.valueOf(params?.userId));

        render(view : 'rejected_Applicant_List', model: [availablerecruitmentDetailsList: listOfApplicantList, user : user, position : params?.position])
    }

    def viewAllRejectedApplicantForARecruitDetails(RecruitmentDetails recruitmentDetailsInstance){
        User user = User.get(Long.valueOf(params?.userId));

        def applicantList = ApplicantInformation.findAllByRecruitmentDetailsAndDiscardIndicator(recruitmentDetailsInstance, true)
        int count = applicantList.size()

        [user : user, recruitmentDetailsInstance : recruitmentDetailsInstance, applicantList : applicantList, applicantInstanceCount : count]


    }


    def sendEmail(){
        def emailList = new ArrayList();
        def confirmedApplicantList = new ArrayList();
        for(int i = 0; i < Integer.valueOf(params?.totalNumberOfEntry?.size()); i++){
            if(params["checkBox${i}"] == "on"){
                ApplicantInformation applicantInformation = ApplicantInformation.get(Long.valueOf(params["applicantId${i}"]));
                applicantInformation.examCenter = params.examCenter
                applicantInformation.indicatorForAdmitCard = true
                applicantInformation.save flush:true

                emailList.add(applicantInformation.emailAddress);
                confirmedApplicantList.add(applicantInformation);

            }else continue;

        }



        if(emailList.size() > 0){
            final String from = "ferozealmamunsagor@gmail.com";

            // Assuming you are sending email from localhost
            String host = "smtp.gmail.com";

            // Get system properties
            Properties properties = System.getProperties();
            properties.put("mail.smtp.starttls.enable", true);
            properties.put("mail.smtp.host", host);
            properties.put("mail.smtp.user", from);
            properties.put("mail.smtp.password", "hasib0639");
            properties.put("mail.smtp.socketFactory.port", "465");
            properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            properties.put("mail.smtp.port", 587);
            properties.put("mail.smtp.auth", "true");

            Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from,"hasib0639");
                }
            });

            try {


                for(ApplicantInformation applicantInformation : confirmedApplicantList){
                    String confirmedMessage = params.message + " Your exam center is : "+ applicantInformation?.examCenter
                    MimeMessage message = new MimeMessage(session);

                    message.setFrom(new InternetAddress(from));
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(applicantInformation?.emailAddress));
                    message.setSubject("Congratulation Message !!!");
                    message.setText(params.message);


                    Transport.send(message);
                    System.out.println("Sent message successfully....");


                }


                // Set Subject: header field

            }catch (MessagingException mex) {
                mex.printStackTrace();
            }

        }

        User user = User.get(Long.valueOf(params?.userId));
        RecruitmentDetails recruitmentDetailsInstance = RecruitmentDetails.get(Long.valueOf(params?.rid))
        def applicantList = ApplicantInformation.findAllByRecruitmentDetailsAndApproveIndicator(recruitmentDetailsInstance, true)
        int count = applicantList.size()

//        [user : user, recruitmentDetailsInstance : recruitmentDetailsInstance, applicantList : applicantList, applicantInstanceCount : count]
        render(view: "viewAllApprovedApplicantForARecruitDetails", model: [confirmedApplicantList: confirmedApplicantList, message: "You have successfully sent emails.", user : user, recruitmentDetailsInstance : recruitmentDetailsInstance, applicantList : applicantList, applicantInstanceCount : count])

    }





    def recommendationTemplate() {
        User user = User.get(Long.valueOf(params?.userId))


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


    def recommendationTemplateForAvailablePosition(){

        User user = User.get(Long.valueOf(params?.userId))

        RecruitmentDetails recruitmentDetails = RecruitmentDetails.get(Long.valueOf(params?.rid))

        def recommendedApplicant
        if(params?.search)
            recommendedApplicant = ApplicantInformation.findAllByRecruitmentDetails(recruitmentDetails)

        if(recommendedApplicant){
            if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on" && params?.ms  == "on" && params?.problemSolvingSkill  == "on" && params?.communicationSkill  == "on" && params?.experience  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom + a.msGpaForRecom+ a.communicationSkillForRecom + a.problemSolvingSkillForRecom + a.experienceForRecom) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom + b.msGpaForRecom+ b.communicationSkillForRecom + b.problemSolvingSkillForRecom + b.experienceForRecom)
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on" && params?.ms  == "on" && params?.communicationSkill  == "on" && params?.experience  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom + a.msGpaForRecom+ a.communicationSkillForRecom  + a.experienceForRecom) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom + b.msGpaForRecom+ b.communicationSkillForRecom +  b.experienceForRecom)
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on" && params?.ms  == "on" && params?.problemSolvingSkillForRecom  == "on" && params?.experience  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom + a.msGpaForRecom+ a.problemSolvingSkillForRecom  + a.experienceForRecom) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom + b.msGpaForRecom+ b.problemSolvingSkillForRecom +  b.experienceForRecom)
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on" && params?.ms  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom + a.msGpaForRecom) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom + b.msGpaForRecom)
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on" && params?.experience  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom + a.experienceForRecom) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom + b.experienceForRecom)
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on" && params?.communicationSkill  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom + a.communicationSkillForRecom) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom + b.communicationSkillForRecom)
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on" && params?.problemSolvingSkillForRecom  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom + a.problemSolvingSkillForRecom) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom + b.problemSolvingSkillForRecom)
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.honor  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.honorGpaForRecom ) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.honorGpaForRecom )
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.ms  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.msGpaForRecom ) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.msGpaForRecom )
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.experience  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.experienceForRecom ) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.experienceForRecom )
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.communicationSkill  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.communicationSkillForRecom ) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.communicationSkillForRecom )
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on" && params?.problemSolvingSkillForRecom  == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom + a.problemSolvingSkillForRecom ) <=> (b.sscGpaForRecom + b.hseGpaForRecom + b.problemSolvingSkillForRecom )
                }
            }

            else if(params?.ssc=="on" && params?.hse == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.hseGpaForRecom ) <=> (b.sscGpaForRecom + b.hseGpaForRecom )

                }
            }

            else if(params?.ssc=="on" && params?.honor == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.honorGpaForRecom ) <=> (b.sscGpaForRecom + b.honorGpaForRecom )

                }
            }

            else if(params?.ssc=="on" && params?.ms == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.msGpaForRecom ) <=> (b.sscGpaForRecom + b.msGpaForRecom )

                }
            }

            else if(params?.ssc=="on" && params?.experience == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.experienceForRecom ) <=> (b.sscGpaForRecom + b.experienceForRecom )

                }
            }

            else if(params?.ssc=="on" && params?.communicationSkill == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.communicationSkillForRecom ) <=> (b.sscGpaForRecom + b.communicationSkillForRecom )

                }
            }

            else if(params?.ssc=="on" && params?.problemSolvingSkillForRecom == "on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom + a.problemSolvingSkillForRecom ) <=> (b.sscGpaForRecom + b.problemSolvingSkillForRecom )

                }
            }

            else if(params?.ssc=="on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom  ) <=> (b.sscGpaForRecom )

                }
            }







            else if(params?.hse=="on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.hseGpaForRecom  ) <=> (b.hseGpaForRecom )

                }
            }

            else if(params?.honor=="on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.honorGpaForRecom  ) <=> (b.honorGpaForRecom )

                }
            }

            else if(params?.ms=="on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.sscGpaForRecom  ) <=> (b.sscGpaForRecom )

                }
            }

            else if(params?.experience=="on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.experienceForRecom  ) <=> (b.experienceForRecom )

                }
            }

            else if(params?.communicationSkill=="on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.communicationSkillForRecom  ) <=> (b.communicationSkillForRecom )

                }
            }

            else if(params?.problemSolvingSkillForRecom=="on"){
                recommendedApplicant = recommendedApplicant.sort { a,b ->
                    (a.problemSolvingSkillForRecom  ) <=> (b.problemSolvingSkillForRecom )

                }
            }
        }







//        List list = [
//                [id:0, firstName: 20, lastName: 'Tendulkar', age: 40 ],
//                [id:1, firstName: 20, lastName: 'Tendulkar', age: 103 ],
//                [id:2, firstName: 20, lastName: 'Tendulkar', age: 48 ],
//                [id:3, firstName: 20, lastName: 'Sehwag', age: 5 ],
//                [id:4, firstName: 20, lastName: 'Sehwag', age: 50 ],
//                [id:5, firstName: 20, lastName: 'Nayyar', age: 15 ]
//        ]
//
//        list.sort { a,b ->
//            (a.firstName + a.age) <=> (b.firstName + b.age)
//        }*.id

        int applicantInstanceCount = 0;
        if(recommendedApplicant){
            recommendedApplicant = Lists.reverse(recommendedApplicant)
            applicantInstanceCount = recommendedApplicant.size()
        }

        [recommendedApplicant : recommendedApplicant, ssc : params?.ssc,  hse :  params?.hse, honor : params?.honor, ms:  params?.ms, problemSolvingSkill:   params?.problemSolvingSkill, communicationSkill:  params?.communicationSkill,   experience: params?.experience,position: params?.position, applicantInstanceCount : applicantInstanceCount, user : user, recruitmentDetails : recruitmentDetails ]




    }

    def captureImage(){
        User user = checkUserByUserID();
        [user : user]


    }


    def viewDailyAttendance(){
        String d = String.valueOf(new Date());
        def attendanceInformation = AttendanceInformation.findAllByDay(Integer.valueOf(d.substring(8, 10)))
        [attendanceInformation : attendanceInformation]


    }

    def viewEmployeeListForMonthlyAttendance(){
        def numberOfUser = User.list();
        [userInstanceList : numberOfUser]

    }

    def viewMonthlyAttendance(User userInstance){
        String month, year;
        if(params?.search){
            month = String.valueOf(params?.month)
            year = String.valueOf(params?.year)
        }else {
            String d = String.valueOf(new Date())
            month = d.substring(4, 7)
            year = d.substring(24)
        }

        List<AttendanceInformation> employeesMonthlyAttendance = AttendanceInformation.withCriteria {
            eq('user', userInstance)
            ilike('date', '%' + month + '%'+ year)

        }



        [employeesMonthlyAttendance : employeesMonthlyAttendance.sort{a,b -> a.day <=> b.day} , employeesMonthlyAttendanceCount: employeesMonthlyAttendance.size(), userInstance : userInstance, search:"${params?.search}", month: month, year:year]



    }

    def rejectApplicant(ApplicantInformation applicantInformationInstance){
        User user = checkUserByUserID();

        applicantInformationInstance.discardIndicator = true;
        applicantInformationInstance.approveIndicator = false;
        applicantInformationInstance.save flush:true

        // ekta email send hobe je se approved for the exam
        final String from = "ferozealmamunsagor@gmail.com";

        // Assuming you are sending email from localhost
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();
        properties.put("mail.smtp.starttls.enable", true);
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.user", from);
        properties.put("mail.smtp.password", "purnotakechudi");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.port", 587);
        properties.put("mail.smtp.auth", "true");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from,"hasib0639");
            }
        });

        try {
            // Create a default MimeMessage object.


            // Set To: header field of the header.

                MimeMessage message = new MimeMessage(session);
                String congratulationMessage = "Sorry " + applicantInformationInstance?.applicantName +" !!! "+"We are extremely sorry to inform you that you have rejected for exam for the post : " +  applicantInformationInstance?.recruitmentDetails?.position?.positionName +"."

                message.setFrom(new InternetAddress(from));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(applicantInformationInstance?.emailAddress));
                message.setSubject("Rejection!!!!!");
                message.setText(congratulationMessage);


                Transport.send(message);
                System.out.println("Sent message successfully....");

        }catch (MessagingException mex) {
            mex.printStackTrace();
        }


        render(view: 'viewApplicantInformation', model:[applicantInformationInstance : applicantInformationInstance, confirmationMessage: "You have successfully rejected this candidate.", user : user, dateOfBirth: String.valueOf(applicantInformationInstance?.dateOfBirth).substring(0,10)] )

    }


    def approvedApplicant(ApplicantInformation applicantInformationInstance){
        User user = checkUserByUserID();


        applicantInformationInstance.approveIndicator = true;
        applicantInformationInstance.discardIndicator = false;

        applicantInformationInstance.save flush:true

        // ekta email send hobe je se approved for the exam
        final String from = "ferozealmamunsagor@gmail.com";

        // Assuming you are sending email from localhost
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();
        properties.put("mail.smtp.starttls.enable", true);
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.user", from);
        properties.put("mail.smtp.password", "purnotakechudi");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.port", 587);
        properties.put("mail.smtp.auth", "true");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from,"hasib0639");
            }
        });

        try {
            // Create a default MimeMessage object.


            // Set To: header field of the header.

                MimeMessage message = new MimeMessage(session);
                String congratulationMessage = "Congratulation " + applicantInformationInstance?.applicantName +" !!! "+" You have selected for exam for the post : " +  applicantInformationInstance?.recruitmentDetails?.position?.positionName +". Details will be notified you through mail."

                message.setFrom(new InternetAddress(from));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(applicantInformationInstance?.emailAddress));
                message.setSubject("Selected!!!!!");
                message.setText(congratulationMessage);


                Transport.send(message);
                System.out.println("Sent message successfully....");





            // Set Subject: header field

        }catch (MessagingException mex) {
            mex.printStackTrace();
        }


        render(view: 'viewApplicantInformation', model:[applicantInformationInstance : applicantInformationInstance, confirmationMessage: "You have successfully approved this candidate.", user : user, dateOfBirth: String.valueOf(applicantInformationInstance?.dateOfBirth).substring(0,10)] )

    }





    def viewApplicantInformation(ApplicantInformation applicantInformationInstance){
        User user = checkUserByUserID();


        [applicantInformationInstance : applicantInformationInstance, user : user, dateOfBirth: String.valueOf(applicantInformationInstance?.dateOfBirth).substring(0,10)]
    }

    def aboutTheWebsite (){

    }









        protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }



}
