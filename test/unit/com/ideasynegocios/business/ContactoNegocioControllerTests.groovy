package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(ContactoNegocioController)
@Mock(ContactoNegocio)
class ContactoNegocioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/contactoNegocio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.contactoNegocioInstanceList.size() == 0
        assert model.contactoNegocioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.contactoNegocioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.contactoNegocioInstance != null
        assert view == '/contactoNegocio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/contactoNegocio/show/1'
        assert controller.flash.message != null
        assert ContactoNegocio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/contactoNegocio/list'

        populateValidParams(params)
        def contactoNegocio = new ContactoNegocio(params)

        assert contactoNegocio.save() != null

        params.id = contactoNegocio.id

        def model = controller.show()

        assert model.contactoNegocioInstance == contactoNegocio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/contactoNegocio/list'

        populateValidParams(params)
        def contactoNegocio = new ContactoNegocio(params)

        assert contactoNegocio.save() != null

        params.id = contactoNegocio.id

        def model = controller.edit()

        assert model.contactoNegocioInstance == contactoNegocio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/contactoNegocio/list'

        response.reset()

        populateValidParams(params)
        def contactoNegocio = new ContactoNegocio(params)

        assert contactoNegocio.save() != null

        // test invalid parameters in update
        params.id = contactoNegocio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/contactoNegocio/edit"
        assert model.contactoNegocioInstance != null

        contactoNegocio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/contactoNegocio/show/$contactoNegocio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        contactoNegocio.clearErrors()

        populateValidParams(params)
        params.id = contactoNegocio.id
        params.version = -1
        controller.update()

        assert view == "/contactoNegocio/edit"
        assert model.contactoNegocioInstance != null
        assert model.contactoNegocioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/contactoNegocio/list'

        response.reset()

        populateValidParams(params)
        def contactoNegocio = new ContactoNegocio(params)

        assert contactoNegocio.save() != null
        assert ContactoNegocio.count() == 1

        params.id = contactoNegocio.id

        controller.delete()

        assert ContactoNegocio.count() == 0
        assert ContactoNegocio.get(contactoNegocio.id) == null
        assert response.redirectedUrl == '/contactoNegocio/list'
    }
}
