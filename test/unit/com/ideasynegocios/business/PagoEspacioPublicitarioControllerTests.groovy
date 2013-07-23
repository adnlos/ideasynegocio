package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(PagoEspacioPublicitarioController)
@Mock(PagoEspacioPublicitario)
class PagoEspacioPublicitarioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pagoEspacioPublicitario/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pagoEspacioPublicitarioInstanceList.size() == 0
        assert model.pagoEspacioPublicitarioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.pagoEspacioPublicitarioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pagoEspacioPublicitarioInstance != null
        assert view == '/pagoEspacioPublicitario/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pagoEspacioPublicitario/show/1'
        assert controller.flash.message != null
        assert PagoEspacioPublicitario.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pagoEspacioPublicitario/list'

        populateValidParams(params)
        def pagoEspacioPublicitario = new PagoEspacioPublicitario(params)

        assert pagoEspacioPublicitario.save() != null

        params.id = pagoEspacioPublicitario.id

        def model = controller.show()

        assert model.pagoEspacioPublicitarioInstance == pagoEspacioPublicitario
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pagoEspacioPublicitario/list'

        populateValidParams(params)
        def pagoEspacioPublicitario = new PagoEspacioPublicitario(params)

        assert pagoEspacioPublicitario.save() != null

        params.id = pagoEspacioPublicitario.id

        def model = controller.edit()

        assert model.pagoEspacioPublicitarioInstance == pagoEspacioPublicitario
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pagoEspacioPublicitario/list'

        response.reset()

        populateValidParams(params)
        def pagoEspacioPublicitario = new PagoEspacioPublicitario(params)

        assert pagoEspacioPublicitario.save() != null

        // test invalid parameters in update
        params.id = pagoEspacioPublicitario.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pagoEspacioPublicitario/edit"
        assert model.pagoEspacioPublicitarioInstance != null

        pagoEspacioPublicitario.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pagoEspacioPublicitario/show/$pagoEspacioPublicitario.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pagoEspacioPublicitario.clearErrors()

        populateValidParams(params)
        params.id = pagoEspacioPublicitario.id
        params.version = -1
        controller.update()

        assert view == "/pagoEspacioPublicitario/edit"
        assert model.pagoEspacioPublicitarioInstance != null
        assert model.pagoEspacioPublicitarioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pagoEspacioPublicitario/list'

        response.reset()

        populateValidParams(params)
        def pagoEspacioPublicitario = new PagoEspacioPublicitario(params)

        assert pagoEspacioPublicitario.save() != null
        assert PagoEspacioPublicitario.count() == 1

        params.id = pagoEspacioPublicitario.id

        controller.delete()

        assert PagoEspacioPublicitario.count() == 0
        assert PagoEspacioPublicitario.get(pagoEspacioPublicitario.id) == null
        assert response.redirectedUrl == '/pagoEspacioPublicitario/list'
    }
}
