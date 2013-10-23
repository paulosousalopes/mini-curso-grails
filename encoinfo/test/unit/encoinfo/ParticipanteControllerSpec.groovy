package encoinfo



import grails.test.mixin.*
import spock.lang.*

@TestFor(ParticipanteController)
@Mock(Participante)
class ParticipanteControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.participanteInstanceList
            model.participanteInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.participanteInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def participante = new Participante()
            participante.validate()
            controller.save(participante)

        then:"The create view is rendered again with the correct model"
            model.participanteInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            participante = new Participante(params)

            controller.save(participante)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/participante/show/1'
            controller.flash.message != null
            Participante.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def participante = new Participante(params)
            controller.show(participante)

        then:"A model is populated containing the domain instance"
            model.participanteInstance == participante
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def participante = new Participante(params)
            controller.edit(participante)

        then:"A model is populated containing the domain instance"
            model.participanteInstance == participante
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def participante = new Participante()
            participante.validate()
            controller.update(participante)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.participanteInstance == participante

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            participante = new Participante(params).save(flush: true)
            controller.update(participante)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/participante/show/$participante.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            status == 404

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def participante = new Participante(params).save(flush: true)

        then:"It exists"
            Participante.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(participante)

        then:"The instance is deleted"
            Participante.count() == 0
            response.redirectedUrl == '/participante/index'
            flash.message != null
    }
}
