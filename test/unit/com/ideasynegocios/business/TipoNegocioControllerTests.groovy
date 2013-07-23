package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(TipoNegocioController)
@Mock(TipoNegocio)
class TipoNegocioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tipoNegocio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tipoNegocioInstanceList.size() == 0
        assert model.tipoNegocioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tipoNegocioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tipoNegocioInstance != null
        assert view == '/tipoNegocio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tipoNegocio/show/1'
        assert controller.flash.message != null
        assert TipoNegocio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoNegocio/list'

        populateValidParams(params)
        def tipoNegocio = new TipoNegocio(params)

        assert tipoNegocio.save() != null

        params.id = tipoNegocio.id

        def model = controller.show()

        assert model.tipoNegocioInstance == tipoNegocio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoNegocio/list'

        populateValidParams(params)
        def tipoNegocio = new TipoNegocio(params)

        assert tipoNegocio.save() != null

        params.id = tipoNegocio.id

        def model = controller.edit()

        assert model.tipoNegocioInstance == tipoNegocio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoNegocio/list'

        response.reset()

        populateValidParams(params)
        def tipoNegocio = new TipoNegocio(params)

        assert tipoNegocio.save() != null

        // test invalid parameters in update
        params.id = tipoNegocio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tipoNegocio/edit"
        assert model.tipoNegocioInstance != null

        tipoNegocio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tipoNegocio/show/$tipoNegocio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tipoNegocio.clearErrors()

        populateValidParams(params)
        params.id = tipoNegocio.id
        params.version = -1
        controller.update()

        assert view == "/tipoNegocio/edit"
        assert model.tipoNegocioInstance != null
        assert model.tipoNegocioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tipoNegocio/list'

        response.reset()

        populateValidParams(params)
        def tipoNegocio = new TipoNegocio(params)

        assert tipoNegocio.save() != null
        assert TipoNegocio.count() == 1

        params.id = tipoNegocio.id

        controller.delete()

        assert TipoNegocio.count() == 0
        assert TipoNegocio.get(tipoNegocio.id) == null
        assert response.redirectedUrl == '/tipoNegocio/list'
    }
}
