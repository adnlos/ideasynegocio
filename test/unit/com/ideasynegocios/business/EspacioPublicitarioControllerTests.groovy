package com.ideasynegocios.business



import org.junit.*
import grails.test.mixin.*

@TestFor(EspacioPublicitarioController)
@Mock(EspacioPublicitario)
class EspacioPublicitarioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/espacioPublicitario/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.espacioPublicitarioInstanceList.size() == 0
        assert model.espacioPublicitarioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.espacioPublicitarioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.espacioPublicitarioInstance != null
        assert view == '/espacioPublicitario/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/espacioPublicitario/show/1'
        assert controller.flash.message != null
        assert EspacioPublicitario.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/espacioPublicitario/list'

        populateValidParams(params)
        def espacioPublicitario = new EspacioPublicitario(params)

        assert espacioPublicitario.save() != null

        params.id = espacioPublicitario.id

        def model = controller.show()

        assert model.espacioPublicitarioInstance == espacioPublicitario
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/espacioPublicitario/list'

        populateValidParams(params)
        def espacioPublicitario = new EspacioPublicitario(params)

        assert espacioPublicitario.save() != null

        params.id = espacioPublicitario.id

        def model = controller.edit()

        assert model.espacioPublicitarioInstance == espacioPublicitario
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/espacioPublicitario/list'

        response.reset()

        populateValidParams(params)
        def espacioPublicitario = new EspacioPublicitario(params)

        assert espacioPublicitario.save() != null

        // test invalid parameters in update
        params.id = espacioPublicitario.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/espacioPublicitario/edit"
        assert model.espacioPublicitarioInstance != null

        espacioPublicitario.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/espacioPublicitario/show/$espacioPublicitario.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        espacioPublicitario.clearErrors()

        populateValidParams(params)
        params.id = espacioPublicitario.id
        params.version = -1
        controller.update()

        assert view == "/espacioPublicitario/edit"
        assert model.espacioPublicitarioInstance != null
        assert model.espacioPublicitarioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/espacioPublicitario/list'

        response.reset()

        populateValidParams(params)
        def espacioPublicitario = new EspacioPublicitario(params)

        assert espacioPublicitario.save() != null
        assert EspacioPublicitario.count() == 1

        params.id = espacioPublicitario.id

        controller.delete()

        assert EspacioPublicitario.count() == 0
        assert EspacioPublicitario.get(espacioPublicitario.id) == null
        assert response.redirectedUrl == '/espacioPublicitario/list'
    }
}
