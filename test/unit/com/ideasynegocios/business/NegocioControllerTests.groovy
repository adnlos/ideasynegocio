package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(NegocioController)
@Mock(Negocio)
class NegocioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/negocio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.negocioInstanceList.size() == 0
        assert model.negocioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.negocioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.negocioInstance != null
        assert view == '/negocio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/negocio/show/1'
        assert controller.flash.message != null
        assert Negocio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/negocio/list'

        populateValidParams(params)
        def negocio = new Negocio(params)

        assert negocio.save() != null

        params.id = negocio.id

        def model = controller.show()

        assert model.negocioInstance == negocio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/negocio/list'

        populateValidParams(params)
        def negocio = new Negocio(params)

        assert negocio.save() != null

        params.id = negocio.id

        def model = controller.edit()

        assert model.negocioInstance == negocio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/negocio/list'

        response.reset()

        populateValidParams(params)
        def negocio = new Negocio(params)

        assert negocio.save() != null

        // test invalid parameters in update
        params.id = negocio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/negocio/edit"
        assert model.negocioInstance != null

        negocio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/negocio/show/$negocio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        negocio.clearErrors()

        populateValidParams(params)
        params.id = negocio.id
        params.version = -1
        controller.update()

        assert view == "/negocio/edit"
        assert model.negocioInstance != null
        assert model.negocioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/negocio/list'

        response.reset()

        populateValidParams(params)
        def negocio = new Negocio(params)

        assert negocio.save() != null
        assert Negocio.count() == 1

        params.id = negocio.id

        controller.delete()

        assert Negocio.count() == 0
        assert Negocio.get(negocio.id) == null
        assert response.redirectedUrl == '/negocio/list'
    }
}
