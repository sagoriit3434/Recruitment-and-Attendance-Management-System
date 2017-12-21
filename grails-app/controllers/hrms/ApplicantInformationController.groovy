package hrms

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
class ApplicantInformationController {
    def fileService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ApplicantInformation.list(params), model:[applicantInformationInstanceCount: ApplicantInformation.count()]
    }

    def show(ApplicantInformation applicantInformationInstance) {
        respond applicantInformationInstance
    }

    def create() {
        respond new ApplicantInformation(params)
    }

    @Transactional
    def save(ApplicantInformation applicantInformationInstance) {
        if (applicantInformationInstance == null) {
            notFound()
            return
        }

        if (applicantInformationInstance.hasErrors()) {
            respond applicantInformationInstance.errors, view:'create'
            return
        }

        applicantInformationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'applicantInformation.label', default: 'ApplicantInformation'), applicantInformationInstance.id])
                redirect applicantInformationInstance
            }
            '*' { respond applicantInformationInstance, [status: CREATED] }
        }
    }

    def edit(ApplicantInformation applicantInformationInstance) {
        respond applicantInformationInstance
    }

    @Transactional
    def update(ApplicantInformation applicantInformationInstance) {
        if (applicantInformationInstance == null) {
            notFound()
            return
        }

        if (applicantInformationInstance.hasErrors()) {
            respond applicantInformationInstance.errors, view:'edit'
            return
        }

        applicantInformationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ApplicantInformation.label', default: 'ApplicantInformation'), applicantInformationInstance.id])
                redirect applicantInformationInstance
            }
            '*'{ respond applicantInformationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ApplicantInformation applicantInformationInstance) {

        if (applicantInformationInstance == null) {
            notFound()
            return
        }

        applicantInformationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ApplicantInformation.label', default: 'ApplicantInformation'), applicantInformationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }


    def onlineJobApplicationForm(RecruitmentDetails recruitmentDetailsInstance){
        [recruitmentDetailsInstance : recruitmentDetailsInstance, applicantInformationInstance : new ApplicantInformation(params)]

    }

    def saveApplicantInformation(ApplicantInformation applicantInformationInstance){
        if (applicantInformationInstance == null) {
            notFound()
            return
        }
        applicantInformationInstance.sscGpaForRecom = 0.0
        applicantInformationInstance.hseGpaForRecom = 0.0
        applicantInformationInstance.honorGpaForRecom = 0.0
        applicantInformationInstance.msGpaForRecom = 0.0
        applicantInformationInstance.communicationSkillForRecom = 0.0
        applicantInformationInstance.problemSolvingSkillForRecom = 0.0
        applicantInformationInstance.experienceForRecom = 0.0











        String cvPath = ""
        if(params?.filePath.size > 0){
            cvPath = fileService.uploadFile("applicant_Information", "applicant_CV", "applicant_CV", "any", 1, 2014000, params?.filePath)
        }

        String imagePath = ""
        if(params?.imagePath?.size > 0){
            imagePath = fileService.uploadFile("applicant_Information", "applicant_Image", "applicant_Image", "any", 1, 2014000, params?.imagePath)
        }



        applicantInformationInstance.cv = cvPath
        applicantInformationInstance.imagePath = imagePath
        applicantInformationInstance.dateOfBirth = Date.parse('yyyy-MM-dd', params?.dateOfBirth)
        applicantInformationInstance.serialNo = generateAUniqueSerialNo();

        if(params?.communicationSkills || params?.problemSolvingSkills || params?.workEthic){
            SkillSet skillSetInstance = new SkillSet();
            if(params?.communicationSkills){
                skillSetInstance.communicationSkills = Double.valueOf(params?.communicationSkills)
                applicantInformationInstance.communicationSkillForRecom = (skillSetInstance.communicationSkills-1.0)/(4.0-1.0);


            }

            if(params?.problemSolvingSkills){
                skillSetInstance.problemSolvingSkills = Double.valueOf(params?.problemSolvingSkills)

                applicantInformationInstance.problemSolvingSkillForRecom = (skillSetInstance.problemSolvingSkills-1.0)/(4.0-1.0);


            }
            if(params?.workEthic)
            skillSetInstance.workEthic = Double.valueOf(params?.workEthic)
            skillSetInstance.save flush:true

            applicantInformationInstance.skillSet = skillSetInstance
        }

        if(params?.sscGpaPart1.size()>0 && params?.sscGpaPart2.size()>0){
            applicantInformationInstance.sseCGPA = Double.valueOf(params?.sscGpaPart1) +  Double.valueOf(params?.sscGpaPart2)/100.0;

            applicantInformationInstance.sscGpaForRecom = (applicantInformationInstance.sseCGPA-1.0)/(5.0-1.0);
        }
        else if(params?.sscGpaPart1.size()>0){
            applicantInformationInstance.sseCGPA = Double.valueOf(params?.sscGpaPart1)
            applicantInformationInstance.sscGpaForRecom = (applicantInformationInstance.sseCGPA-1.0)/(5.0-1.0);

        }









        if(params?.hscGpaPart1.size()>0 && params?.hscGpaPart2.size()>0){
            applicantInformationInstance.hseCGPA = Double.valueOf(params?.hscGpaPart1) +  Double.valueOf(params?.hscGpaPart2)/100.0;

            applicantInformationInstance.hseGpaForRecom = (applicantInformationInstance.hseCGPA-1.0)/(5.0-1.0);

        }
        else if(params?.hscGpaPart1.size()>0){
            applicantInformationInstance.hseCGPA = Double.valueOf(params?.hscGpaPart1)

            applicantInformationInstance.hseGpaForRecom = (applicantInformationInstance.hseCGPA-1.0)/(5.0-1.0);

        }

        if(params?.honorsCgpaPart1.size()>0 && params?.honorsCgpaPart2.size()>0){
            applicantInformationInstance.honorsCGPA = Double.valueOf(params?.honorsCgpaPart1) +  Double.valueOf(params?.honorsCgpaPart2)/100.0;

            applicantInformationInstance.honorGpaForRecom = (applicantInformationInstance.honorsCGPA-2.0)/(4.0-2.0);

        }
        else if(params?.honorsCgpaPart1.size()>0){
            applicantInformationInstance.honorsCGPA = Double.valueOf(params?.honorsCgpaPart1)

            applicantInformationInstance.honorGpaForRecom = (applicantInformationInstance.honorsCGPA-2.0)/(4.0-2.0);

        }

        if(params?.msCgpaPart1.size()>0 && params?.msCgpaPart2.size()>0){
            applicantInformationInstance.msCGPA = Double.valueOf(params?.msCgpaPart1) +  Double.valueOf(params?.msCgpaPart2)/100.0;

            applicantInformationInstance.msGpaForRecom = (applicantInformationInstance.msCGPA -2.0)/(4.0-2.0);

        }
        else if(params?.msCgpaPart1.size()>0){
            applicantInformationInstance.msCGPA = Double.valueOf(params?.msCgpaPart1)

            applicantInformationInstance.msGpaForRecom = (applicantInformationInstance.msCGPA -2.0)/(4.0-2.0);


        }
        applicantInformationInstance.validate()
        applicantInformationInstance.clearErrors()
        if (applicantInformationInstance.hasErrors()) {
            respond applicantInformationInstance.errors, view:'create'
            return
        }

        if(applicantInformationInstance.experienceYears >=10 )
            applicantInformationInstance.experienceForRecom = 1.0
        else         applicantInformationInstance.experienceForRecom = Double.valueOf(applicantInformationInstance.experienceYears)/10.0;




        applicantInformationInstance.save flush:true


            final String from = "ferozealmamunsagor@gmail.com";

            String host = "smtp.gmail.com";

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

                    MimeMessage message = new MimeMessage(session);
                    String textMessage = "Congratulation "+ applicantInformationInstance.applicantName +"!!!!" + "You have succesfully applied for" + applicantInformationInstance?.recruitmentDetails?.position?.positionName  + "position. Your Serial No is : "+applicantInformationInstance?.serialNo + ". Keep this for further modification of your personal information."

                    message.setFrom(new InternetAddress(from));
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(applicantInformationInstance?.emailAddress));
                    message.setSubject("Serial No");
                    message.setText(textMessage);


                    Transport.send(message);
                    System.out.println("Sent message successfully....");

            }catch (MessagingException mex) {
                mex.printStackTrace();
            }







        render(view: "confirmationWindowForApplicant", model: [serialNo: applicantInformationInstance.serialNo, message: "You have successfully applied."])

    }



    def generateAUniqueSerialNo(){
        Random random = new Random();
        String prefix = String.format("%04d", random.nextInt(10000));
        String middle = String.format("%04d", random.nextInt(10000));
        String suffix = String.format("%04d", random.nextInt(10000));

        String finalSerialNo = prefix + '-' + middle + '-' +  suffix;

        ApplicantInformation applicantInformation = ApplicantInformation.findBySerialNo(finalSerialNo)

        if(applicantInformation)
            generateAUniqueSerialNo()



        return finalSerialNo
    }

    def authenticationForApplicant(){

    }

    def authenticationForApplicantForAdmitCard(){

    }




    def validateApplicantSerialNo(){

        ApplicantInformation applicantInformation = ApplicantInformation.findBySerialNo(params.serialNo)
        if(applicantInformation){
            redirect(uri: "/applicantInformation/viewApplicantInformationDetailsForUpdate?id=${applicantInformation?.id}");
            return ;

        }

        render(view: "authenticationForApplicant", model: [messsage : "Sorry Something went wrong."])
    }
    def validateApplicantSerialNoAndIndicatorForAdmitCard(){
        String message="";


        ApplicantInformation applicantInformation = ApplicantInformation.findBySerialNo(params?.serialNo)
        if(applicantInformation?.indicatorForAdmitCard == true){
            render(view: 'admitCardDownloadView', model: [applicantInformationInstance : applicantInformation, examDate : String.valueOf(applicantInformation?.recruitmentDetails?.examDate).substring(0,10)])
//            redirect(uri: "/applicantInformation/viewApplicantInformationDetailsForUpdate?id=${applicantInformation?.id}");
            return ;

        }else if (applicantInformation?.approveIndicator == true)
            message = "Sorry...Your admit card is not prepared...."
        else if(applicantInformation.discardIndicator == true)
            message = "Sorry...Your are rejected...."
        else message = "Something went wrong."


        render(view: "authenticationForApplicantForAdmitCard", model: [messsage : message])
    }


    def admitCardDownloadView(){

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


    def viewApplicantInformationDetailsForUpdate(){
        ApplicantInformation applicantInformationInstance = ApplicantInformation.get(Long.valueOf(params?.id))
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
        String dateOfToday = dateWithFormat()

        boolean flag=false;
        if(sdf.parse(String.valueOf(applicantInformationInstance.recruitmentDetails.lastDateForApply)).compareTo(sdf.parse(dateOfToday)) >= 0){
            flag = true;
        }





            [applicantInformationInstance : applicantInformationInstance, recruitmentDetailsInstance : applicantInformationInstance.recruitmentDetails, flag : flag, birthDay : String.valueOf(applicantInformationInstance?.dateOfBirth).substring(0,10)]

    }

    def updateApplicantInformationFrom(ApplicantInformation applicantInformationInstance){
        String sscGpaPart1, sscGpaPart2, hscGpaPart1, hscGpaPart2, honorsCgpaPart1, honorsCgpaPart2, msCgpaPart1, msCgpaPart2;

        if(applicantInformationInstance?.sseCGPA){
            sscGpaPart1 = String.valueOf(applicantInformationInstance?.sseCGPA).substring(0,1);
            sscGpaPart2 = String.valueOf(applicantInformationInstance?.sseCGPA).substring(2);
            if(sscGpaPart2.equals("0"))
                sscGpaPart2 = "00"
        }

        if(applicantInformationInstance?.hseCGPA){
            hscGpaPart1 = String.valueOf(applicantInformationInstance?.hseCGPA).substring(0,1);
            hscGpaPart2 = String.valueOf(applicantInformationInstance?.hseCGPA).substring(2);
            if(hscGpaPart2.equals("0"))
                hscGpaPart2 = "00"
        }

        if(applicantInformationInstance?.honorsCGPA){
            honorsCgpaPart1 = String.valueOf(applicantInformationInstance?.honorsCGPA).substring(0,1);
            honorsCgpaPart2 = String.valueOf(applicantInformationInstance?.honorsCGPA).substring(2);
            if(honorsCgpaPart2.equals("0"))
                honorsCgpaPart2 = "00"
        }

        if(applicantInformationInstance?.msCGPA){
            msCgpaPart1 = String.valueOf(applicantInformationInstance?.msCGPA).substring(0,1);
            msCgpaPart2 = String.valueOf(applicantInformationInstance?.msCGPA).substring(2);
            if(msCgpaPart2.equals("0"))
                msCgpaPart2 = "00"
        }


        [applicantInformationInstance : applicantInformationInstance, recruitmentDetails: applicantInformationInstance?.recruitmentDetails?.id, sscGpaPart1 : sscGpaPart1, sscGpaPart2 : sscGpaPart2, hscGpaPart1 : hscGpaPart1, hscGpaPart2 : hscGpaPart2, honorsCgpaPart1 : honorsCgpaPart1, honorsCgpaPart2 : honorsCgpaPart2, msCgpaPart1 : msCgpaPart1, msCgpaPart2 : msCgpaPart2, dateOfBirth : String.valueOf(applicantInformationInstance?.dateOfBirth).substring(0,10)]

    }

        def updateApplicantInformation(ApplicantInformation applicantInformationInstance){
            if (applicantInformationInstance == null) {
                notFound()
                return
            }

            if(params?.filePath.size > 0){
                applicantInformationInstance.cv = fileService.uploadFile("applicant_Information", "applicant_CV", "applicant_CV", "any", 1, 2014000, params?.filePath)
            }

            if(params?.imagePath?.size > 0){
                applicantInformationInstance.imagePath = fileService.uploadFile("applicant_Information", "applicant_Image", "applicant_Image", "any", 1, 2014000, params?.imagePath)
            }

            applicantInformationInstance.recruitmentDetails = RecruitmentDetails.get(Long.valueOf(params.recruitmentDetails))
//            applicantInformationInstance.recruitmentDetails = Long.valueOf(params.recruitmentDetails)


//            applicantInformationInstance.serialNo = generateAUniqueSerialNo();




            if(params?.communicationSkills || params?.problemSolvingSkills || params?.workEthic){
//                SkillSet skillSetInstance = new SkillSet();
                if(params?.communicationSkills){
                    applicantInformationInstance.skillSet.communicationSkills = Double.valueOf(params?.communicationSkills)

                    applicantInformationInstance.communicationSkillForRecom = (applicantInformationInstance.skillSet.communicationSkills-1.0)-(4.0-1.0);

                }

                if(params?.problemSolvingSkills){
                    applicantInformationInstance.skillSet.problemSolvingSkills = Double.valueOf(params?.problemSolvingSkills)

                    applicantInformationInstance.problemSolvingSkillForRecom = (applicantInformationInstance.skillSet.problemSolvingSkills-1.0)-(4.0-1.0);

                }
                if(params?.workEthic)
                    applicantInformationInstance.skillSet.workEthic = Double.valueOf(params?.workEthic)
//                skillSetInstance.save flush:true

//                applicantInformationInstance.skillSet = skillSetInstance
            }

            if(params?.sscGpaPart1.size()>0 && params?.sscGpaPart2.size()>0){
                if(params?.sscGpaPart2.size() == 1){
                    applicantInformationInstance.sseCGPA = Double.valueOf(params?.sscGpaPart1) +  Double.valueOf(params?.sscGpaPart2)/10.0;

                    applicantInformationInstance.sscGpaForRecom = (applicantInformationInstance.sseCGPA-1.0)/(5.0-1.0);

                }

                else{
                    applicantInformationInstance.sseCGPA = Double.valueOf(params?.sscGpaPart1) +  Double.valueOf(params?.sscGpaPart2)/100.0;

                    applicantInformationInstance.sscGpaForRecom = (applicantInformationInstance.sseCGPA-1.0)/(5.0-1.0);

                }

            }
            else if(params?.sscGpaPart1.size()>0){
                applicantInformationInstance.sseCGPA = Double.valueOf(params?.sscGpaPart1)

                applicantInformationInstance.sscGpaForRecom = (applicantInformationInstance.sseCGPA-1.0)/(5.0-1.0);

            }

            if(params?.hscGpaPart1.size()>0 && params?.hscGpaPart2.size()>0){
                if(params?.hscGpaPart2.size() == 1){
                    applicantInformationInstance.hseCGPA = Double.valueOf(params?.hscGpaPart1) +  Double.valueOf(params?.hscGpaPart2)/10.0;

                    applicantInformationInstance.hseGpaForRecom = (applicantInformationInstance.hseCGPA-1.0)/(5.0-1.0);

                }
                else{
                    applicantInformationInstance.hseCGPA = Double.valueOf(params?.hscGpaPart1) +  Double.valueOf(params?.hscGpaPart2)/100.0;

                    applicantInformationInstance.hseGpaForRecom = (applicantInformationInstance.hseCGPA-1.0)/(5.0-1.0);

                }

            }
            else if(params?.hscGpaPart1.size()>0){
                applicantInformationInstance.hseCGPA = Double.valueOf(params?.hscGpaPart1)

                applicantInformationInstance.hseGpaForRecom = (applicantInformationInstance.hseCGPA-1.0)/(5.0-1.0);

            }

            if(params?.honorsCgpaPart1.size()>0 && params?.honorsCgpaPart2.size()>0){
                if(params?.honorsCgpaPart2.size() == 1){
                    applicantInformationInstance.honorsCGPA = Double.valueOf(params?.honorsCgpaPart1) +  Double.valueOf(params?.honorsCgpaPart2)/10.0;

                    applicantInformationInstance.honorGpaForRecom = (applicantInformationInstance.honorsCGPA-2.0)/(4.0-2.0);

                }
                else{
                    applicantInformationInstance.honorsCGPA = Double.valueOf(params?.honorsCgpaPart1) +  Double.valueOf(params?.honorsCgpaPart2)/100.0;

                    applicantInformationInstance.honorGpaForRecom = (applicantInformationInstance.honorsCGPA-2.0)/(4.0-2.0);

                }

            }
            else if(params?.honorsCgpaPart1.size()>0){
                applicantInformationInstance.honorsCGPA = Double.valueOf(params?.honorsCgpaPart1)

                applicantInformationInstance.honorGpaForRecom = (applicantInformationInstance.honorsCGPA-2.0)/(4.0-2.0);

            }

            if(params?.msCgpaPart1.size()>0 && params?.msCgpaPart2.size()>0){
                if(params?.msCgpaPart2.size() == 1){
                    applicantInformationInstance.msCGPA = Double.valueOf(params?.msCgpaPart1) +  Double.valueOf(params?.msCgpaPart2)/10.0;

                    applicantInformationInstance.msGpaForRecom = (applicantInformationInstance.msCGPA -2.0)/(4.0-2.0);

                }
                else{
                    applicantInformationInstance.msCGPA = Double.valueOf(params?.msCgpaPart1) +  Double.valueOf(params?.msCgpaPart2)/100.0;

                    applicantInformationInstance.msGpaForRecom = (applicantInformationInstance.msCGPA -2.0)/(4.0-2.0);


                }

            }
            else if(params?.msCgpaPart1.size()>0){
                applicantInformationInstance.msCGPA = Double.valueOf(params?.msCgpaPart1)

                applicantInformationInstance.msGpaForRecom = (applicantInformationInstance.msCGPA -2.0)/(4.0-2.0);

            }

            if(applicantInformationInstance.experienceYears >=10 )
                applicantInformationInstance.experienceForRecom = 1.0
            else         applicantInformationInstance.experienceForRecom = Double.valueOf(applicantInformationInstance.experienceYears)/10.0;

            applicantInformationInstance.validate()
            applicantInformationInstance.clearErrors()
            if (applicantInformationInstance.hasErrors()) {
                respond applicantInformationInstance.errors, view:'create'
                return
            }


            applicantInformationInstance.save flush:true


            render(view: "viewApplicantInformationDetailsForUpdate", model: [applicantInformationInstance : applicantInformationInstance, message: "Your information has successfully updated."])
        }



//        def updateApplicantInformation(ApplicantInformation applicantInformationInstance){
//        if (applicantInformationInstance == null) {
//            notFound()
//            return
//        }
//
//        if(params?.filePath.size > 0){
//            applicantInformationInstance.cv = fileService.uploadFile("applicant_Information", "applicant_CV", "applicant_CV", "any", 1, 2014000, params?.filePath)
//        }
//        applicantInformationInstance.validate()
//
//        if (applicantInformationInstance.hasErrors()) {
//            respond applicantInformationInstance.errors, view:'create'
//            return
//        }
//
//
//
//
//        applicantInformationInstance.save flush:true
//
//        render(view: "confirmationWindowForApplicant", model: [serialNo: applicantInformationInstance.serialNo, message : "Your information has successfully updated."])
//
//
//    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'applicantInformation.label', default: 'ApplicantInformation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
