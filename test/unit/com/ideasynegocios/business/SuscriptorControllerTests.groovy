package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(SuscriptorController)
@Mock(Suscriptor)
class SuscriptorControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/suscriptor/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.suscriptorInstanceList.size() == 0
        assert model.suscriptorInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.suscriptorInstance != null
    }

    void testSave() {
        controller.save()

        assert model.suscriptorInstance != null
        assert view == '/suscriptor/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/suscriptor/show/1'
        assert controller.flash.message != null
        assert Suscriptor.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/suscriptor/list'

        populateValidParams(params)
        def suscriptor = new Suscriptor(params)

        assert suscriptor.save() != null

        params.id = suscriptor.id

        def model = controller.show()

        assert model.suscriptorInstance == suscriptor
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/suscriptor/list'

        populateValidParams(params)
        def suscriptor = new Suscriptor(params)

        assert suscriptor.save() != null

        params.id = suscriptor.id

        def model = controller.edit()

        assert model.suscriptorInstance == suscriptor
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/suscriptor/list'

        response.reset()

        populateValidParams(params)
        def suscriptor = new Suscriptor(params)

        assert suscriptor.save() != null

        // test invalid parameters in update
        params.id = suscriptor.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/suscriptor/edit"
        assert model.suscriptorInstance != null

        suscriptor.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/suscriptor/show/$suscriptor.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        suscriptor.clearErrors()

        populateValidParams(params)
        params.id = suscriptor.id
        params.version = -1
        controller.update()

        assert view == "/suscriptor/edit"
        assert model.suscriptorInstance != null
        assert model.suscriptorInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/suscriptor/list'

        response.reset()

        populateValidParams(params)
        def suscriptor = new Suscriptor(params)

        assert suscriptor.save() != null
        assert Suscriptor.count() == 1

        params.id = suscriptor.id

        controller.delete()

        assert Suscriptor.count() == 0
        assert Suscriptor.get(suscriptor.id) == null
        assert response.redirectedUrl == '/suscriptor/list'
    }
}
