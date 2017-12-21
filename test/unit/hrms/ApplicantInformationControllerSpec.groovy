package hrms



import grails.test.mixin.*
import spock.lang.*

@TestFor(ApplicantInformationController)
@Mock(ApplicantInformation)
class ApplicantInformationControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.applicantInformationInstanceList
            model.applicantInformationInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.applicantInformationInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def applicantInformation = new ApplicantInformation()
            applicantInformation.validate()
            controller.save(applicantInformation)

        then:"The create view is rendered again with the correct model"
            model.applicantInformationInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            applicantInformation = new ApplicantInformation(params)

            controller.save(applicantInformation)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/applicantInformation/show/1'
            controller.flash.message != null
            ApplicantInformation.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def applicantInformation = new ApplicantInformation(params)
            controller.show(applicantInformation)

        then:"A model is populated containing the domain instance"
            model.applicantInformationInstance == applicantInformation
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def applicantInformation = new ApplicantInformation(params)
            controller.edit(applicantInformation)

        then:"A model is populated containing the domain instance"
            model.applicantInformationInstance == applicantInformation
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/applicantInformation/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def applicantInformation = new ApplicantInformation()
            applicantInformation.validate()
            controller.update(applicantInformation)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.applicantInformationInstance == applicantInformation

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            applicantInformation = new ApplicantInformation(params).save(flush: true)
            controller.update(applicantInformation)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/applicantInformation/show/$applicantInformation.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/applicantInformation/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def applicantInformation = new ApplicantInformation(params).save(flush: true)

        then:"It exists"
            ApplicantInformation.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(applicantInformation)

        then:"The instance is deleted"
            ApplicantInformation.count() == 0
            response.redirectedUrl == '/applicantInformation/index'
            flash.message != null
    }
}
