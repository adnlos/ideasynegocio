package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(ImagenNegocioController)
@Mock(ImagenNegocio)
class ImagenNegocioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/imagenNegocio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.imagenNegocioInstanceList.size() == 0
        assert model.imagenNegocioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.imagenNegocioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.imagenNegocioInstance != null
        assert view == '/imagenNegocio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/imagenNegocio/show/1'
        assert controller.flash.message != null
        assert ImagenNegocio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/imagenNegocio/list'

        populateValidParams(params)
        def imagenNegocio = new ImagenNegocio(params)

        assert imagenNegocio.save() != null

        params.id = imagenNegocio.id

        def model = controller.show()

        assert model.imagenNegocioInstance == imagenNegocio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/imagenNegocio/list'

        populateValidParams(params)
        def imagenNegocio = new ImagenNegocio(params)

        assert imagenNegocio.save() != null

        params.id = imagenNegocio.id

        def model = controller.edit()

        assert model.imagenNegocioInstance == imagenNegocio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/imagenNegocio/list'

        response.reset()

        populateValidParams(params)
        def imagenNegocio = new ImagenNegocio(params)

        assert imagenNegocio.save() != null

        // test invalid parameters in update
        params.id = imagenNegocio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/imagenNegocio/edit"
        assert model.imagenNegocioInstance != null

        imagenNegocio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/imagenNegocio/show/$imagenNegocio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        imagenNegocio.clearErrors()

        populateValidParams(params)
        params.id = imagenNegocio.id
        params.version = -1
        controller.update()

        assert view == "/imagenNegocio/edit"
        assert model.imagenNegocioInstance != null
        assert model.imagenNegocioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/imagenNegocio/list'

        response.reset()

        populateValidParams(params)
        def imagenNegocio = new ImagenNegocio(params)

        assert imagenNegocio.save() != null
        assert ImagenNegocio.count() == 1

        params.id = imagenNegocio.id

        controller.delete()

        assert ImagenNegocio.count() == 0
        assert ImagenNegocio.get(imagenNegocio.id) == null
        assert response.redirectedUrl == '/imagenNegocio/list'
    }
}
