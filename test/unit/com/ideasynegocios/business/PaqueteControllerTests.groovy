package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(PaqueteController)
@Mock(Paquete)
class PaqueteControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/paquete/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.paqueteInstanceList.size() == 0
        assert model.paqueteInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.paqueteInstance != null
    }

    void testSave() {
        controller.save()

        assert model.paqueteInstance != null
        assert view == '/paquete/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/paquete/show/1'
        assert controller.flash.message != null
        assert Paquete.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/paquete/list'

        populateValidParams(params)
        def paquete = new Paquete(params)

        assert paquete.save() != null

        params.id = paquete.id

        def model = controller.show()

        assert model.paqueteInstance == paquete
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/paquete/list'

        populateValidParams(params)
        def paquete = new Paquete(params)

        assert paquete.save() != null

        params.id = paquete.id

        def model = controller.edit()

        assert model.paqueteInstance == paquete
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/paquete/list'

        response.reset()

        populateValidParams(params)
        def paquete = new Paquete(params)

        assert paquete.save() != null

        // test invalid parameters in update
        params.id = paquete.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/paquete/edit"
        assert model.paqueteInstance != null

        paquete.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/paquete/show/$paquete.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        paquete.clearErrors()

        populateValidParams(params)
        params.id = paquete.id
        params.version = -1
        controller.update()

        assert view == "/paquete/edit"
        assert model.paqueteInstance != null
        assert model.paqueteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/paquete/list'

        response.reset()

        populateValidParams(params)
        def paquete = new Paquete(params)

        assert paquete.save() != null
        assert Paquete.count() == 1

        params.id = paquete.id

        controller.delete()

        assert Paquete.count() == 0
        assert Paquete.get(paquete.id) == null
        assert response.redirectedUrl == '/paquete/list'
    }
}
