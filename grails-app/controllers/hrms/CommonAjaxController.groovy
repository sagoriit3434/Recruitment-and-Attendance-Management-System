package hrms


import grails.converters.JSON
import grails.transaction.Transactional

import java.text.SimpleDateFormat
@Transactional(readOnly = false)

class CommonAjaxController {

    FileService           fileService


    Date                  currentDate
    SimpleDateFormat      dateParseFormat
    User                  currentUser
    def                   dataSource

    def beforeInterceptor = {
        currentDate     = new Date()
        dateParseFormat = new SimpleDateFormat(grailsApplication.config.format.dtp.date)
    }







    def downloadDoc(String moduleName, String subModuleName, String fileName) {
        File file = fileService.getFile(moduleName, subModuleName, fileName)
        if (file.exists()) {
            response.setContentType("application/octet-stream")
            response.setHeader("Content-disposition", "filename=${file.name}")
            response.outputStream << file.bytes
            return
        }
    }







}
