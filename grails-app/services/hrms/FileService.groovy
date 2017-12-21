package hrms
import org.springframework.web.multipart.commons.CommonsMultipartFile
import javax.servlet.http.HttpServletRequest
import java.text.SimpleDateFormat

import grails.transaction.Transactional

@Transactional
class FileService {
//    SpringSecurityService springSecurityService
//    TrackerService trackerService
//    User currentUser

    public static final String PROJECT_REPO_PATH = "PROJECT_REPO_PATH",
                               PROJECT_ROOT_PATH = "PROJECT_ROOT_PATH",
                               FS = File.separator

//    String getCurrentWorkingDir(String propertyKey) throws Exception { //PROJECT_ROOT_PATH
//        ComProperty comProperty = null
//        try {
//            comProperty = ComProperty.findByPropertyKey(propertyKey)
//        } catch (Exception e) {
//            println "Exception @ fileService.getCurrentWorkingDir(propertyKey): " + e
//        }
//        return comProperty ? comProperty?.propertyValue : getCurrentWorkingDir()
//    }

    String getCurrentWorkingDir() throws Exception {
        return System.getProperty("user.dir")  //D:\Projects\ispp
    }

//    String getProjectRepository(String propertyKey) { //PROJECT_REPO_PATH
//        String currentRepository = null
//        File rootDirectory = new File(getCurrentWorkingDir(PROJECT_ROOT_PATH))
//        ComProperty comProperty = null
//        try {
//            comProperty = ComProperty.findByPropertyKey(propertyKey)
//        } catch (Exception e) {
//            println "Exception : " + e
//        }
//        try {
//            currentRepository = (comProperty ? comProperty?.propertyValue : (rootDirectory.getParent() + FS + rootDirectory.getName() + "_repo")) + FS
//        } catch (Exception e) {
//            println "Error - Failed to get current repository :\n" + e
//        }
//        return currentRepository
//    }

    String getProjectRepository() {
        String currentRepository = null
        File rootDirectory = null
        try {
            rootDirectory = new File(getCurrentWorkingDir(PROJECT_ROOT_PATH))
            currentRepository = (rootDirectory.getParent() + FS + rootDirectory.getName() + "_repo") + FS
        } catch (Exception e) {
            println "Error - Failed to get current repository :\n" + e
        }
        return currentRepository
    }

    String getProjectRepository(String moduleName, String subModuleName) {
        return getProjectRepository() + (moduleName == null ?: moduleName + FS) + (subModuleName == null ?: subModuleName + FS)
    }

    String validateExistingDirectory(String filePath) {
        File existingDirectory = new File(filePath)
        if (!existingDirectory.exists()) {
            if (existingDirectory.mkdirs()) {
                System.out.println(filePath + " created!")
            } else {
                System.out.println("Failed to create directory ( " + filePath + " )!")
            }
        }
        return filePath
    }

    String validateExistingDirectory(String moduleName, String subModuleName) {
        String fileDestination = ""
        try {
            fileDestination = getProjectRepository() + ((moduleName == null ?: moduleName + FS) + (subModuleName == null ?: subModuleName + FS))
        } catch (Exception e) {
            println "Error - Failed to validate file destination :\n" + e
        }
        File existingDirectory = new File(fileDestination)
        if (!existingDirectory.exists()) {
            if (existingDirectory.mkdirs()) {
                System.out.println(fileDestination + " created!")
            } else {
                System.out.println("Failed to create directory ( " + fileDestination + " )!")
            }
        }
        return fileDestination
    }

    String getFileExtension(String fileName) {
        String fileExtension = null
        try {
            fileExtension = fileName.substring(fileName.lastIndexOf('.'), fileName.length())
        } catch (Exception e) {
            println "Error - Failed to extract file extension :\n" + e
        }
        return fileExtension
    }

    /*@param allowedType image,files,any*/

    boolean validateFile(String allowedType, Integer allowedMinSize, Integer allowedMaxSize, CommonsMultipartFile requestedFile) {
        boolean status = false
        if (allowedMinSize) {
            if (requestedFile.size <= allowedMinSize) {
                //            flash.message = "File size should not exceed the limit ( " + allowedMaxSize + " )!"
                println "File size should more than min limit ( " + allowedMinSize + " )!"
                return false
            }
        }
        if (allowedMaxSize) {
            if (requestedFile.size > allowedMaxSize) {
                //            flash.message = "File size should not exceed the limit ( " + allowedMaxSize + " )!"
                println "File size should not exceed max limit ( " + allowedMaxSize + " )!"
                return false
            }
        }
        if (allowedType.equals('image')) {
            if (requestedFile.contentType.equals("image/x-icon") ||
                    requestedFile.contentType.equals("image/png") ||
                    requestedFile.contentType.equals("image/jpeg") ||
                    requestedFile.contentType.equals("image/gif")) {
                status = true
            } else {
//                    flash.message = "Only image types are allowed!"
                println "Only image types are allowed!"
            }
        } else if (allowedType.equals('files')) {
            if (
            requestedFile.contentType.equals("pdf") ||
                    requestedFile.contentType.equals("doc") ||
                    requestedFile.contentType.equals("docx") ||
                    requestedFile.contentType.equals("xlx") ||
                    requestedFile.contentType.equals("xlsx")
            ) {
                status = true
            } else {
//                    flash.message = "Only file (pdf, doc, docx, xlx & xlsx) types are allowed!"
                println "Only file (pdf, doc, docx, xlx & xlsx) types are allowed!"
            }
        } else if (allowedType.equals('any')) {
            status = true
        }
        return status
    }

    String generateFileName(String moduleName, String subModuleName, String prefix, CommonsMultipartFile requestedFile) {
//        currentUser = springSecurityService.getCurrentUser()
        String newFileName = '', extension = getFileExtension(requestedFile.getOriginalFilename())
        SimpleDateFormat sdf = new SimpleDateFormat('yyMMdd')
        String currentDate = sdf.format(new Date())
        HttpServletRequest request
        if (requestedFile.empty) {
//            flash.warning = "File cannot be empty...!"
            println "File cannot be empty...!"
            return null
        }
        try {
            newFileName = (subModuleName ? moduleName + "_" + subModuleName : moduleName) + "_" + (prefix ? prefix : "") + "_" + currentDate + "_" + UUID.randomUUID() + extension
        } catch (Exception e) {
            println "Error - Failed to generate new file name :\n" + e
        }
        println(
                "\n===================================================================================================================================================================\n" +
//            "Current User Id    : " + currentUser.id.toString() + "\n" +
                        "Current Date       : " + currentDate + "\n" +
                        "Module Name        : " + moduleName + "\n" +
                        "Sub Module Name    : " + subModuleName + "\n" +
                        "prefix             : " + prefix + "\n" +
                        "File Size          : " + requestedFile?.size ?: 0 + " kb" + "\n" +
                        "Content Type       : " + requestedFile.contentType + "\n" +
                        "File Extension     : " + extension + "\n" +
                        "Original File Name : " + requestedFile.originalFilename + "\n" +
                        "Project Repository : " + getProjectRepository(PROJECT_REPO_PATH) + "\n" +
                        "New File Name      : " + newFileName.toLowerCase() + "\n" +
                        "Full Path          : " + getProjectRepository(PROJECT_REPO_PATH) +
                        newFileName.toLowerCase() + "\n" +
//            "Printed From       : " + trackerService.getIpAddress(request)    + "\n" +
//            "Printed From (IP)  : " + trackerService.getIP(request)           + "\n" +
                        "===================================================================================================================================================================\n"
        )
        return newFileName.toLowerCase()
    }

    String uploadFile(String moduleName, String subModuleName, String prefix, String allowedType, Integer allowedMinSize, Integer allowedMaxSize, CommonsMultipartFile requestedFile) throws FileNotFoundException, Exception {
        String fileDestination = validateExistingDirectory(moduleName, subModuleName)
        String   newFileName = generateFileName(moduleName, subModuleName, prefix, requestedFile)
        File newFilePath = new File(fileDestination + newFileName)
        validateFile(allowedType, allowedMinSize, allowedMaxSize, requestedFile) ? transferFile(requestedFile, newFilePath) : null
        return newFileName
    }

    String updateFile(String moduleName, String subModuleName, String prefix, String allowedType, Integer allowedMinSize, Integer allowedMaxSize, CommonsMultipartFile requestedFile, String existingFileName) throws FileNotFoundException, Exception {
        if (existingFileName) {
            if (requestedFile) {
                deleteFile(getFile(moduleName, subModuleName, existingFileName))
                uploadFile(moduleName, subModuleName, prefix, allowedType, allowedMinSize, allowedMaxSize, requestedFile)
            } else {
                return null
            }
        } else if (requestedFile) {
            uploadFile(moduleName, subModuleName, prefix, allowedType, allowedMinSize, allowedMaxSize, requestedFile)
        } else {
            deleteFile(getFile(moduleName, subModuleName, existingFileName))
            return null
        }
    }

    Boolean transferFile(CommonsMultipartFile requestedFile, File newFilePath) throws IllegalStateException {
        Boolean isTransferred = false
        try {
            requestedFile.transferTo(newFilePath)
            isTransferred = true
        } catch (Exception e) {
            println "Sorry, failed to transfer file @ path : " + newFilePath + "\n" + e
            isTransferred = false
        }
        return isTransferred
    }

    Boolean deleteFile(File file) {
        Boolean isDeleted = false
        try {
            file.delete()
            isDeleted = true
        } catch (Exception e) {
            println "Sorry, failed to delete file :\n" + e
        }
        return isDeleted
    }

    File getFile(String moduleName, String subModuleName, String fileName) throws FileNotFoundException, Exception {
        File requestedFile = null
        String fullPath = getProjectRepository(moduleName, subModuleName)
        try {
            requestedFile = new File(fullPath + fileName)
        } catch (Exception e) {
            println "Sorry, failed to get file (" + fileName + ") from path : " + fullPath + "\n" + e
        }
        return requestedFile
    }
}
