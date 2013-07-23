package com.ideasynegocios.seguridad



import org.junit.*
import grails.test.mixin.*

@TestFor(RoleSecController)
@Mock(RoleSec)
class RoleSecControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/roleSec/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.roleSecInstanceList.size() == 0
        assert model.roleSecInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.roleSecInstance != null
    }

    void testSave() {
        controller.save()

        assert model.roleSecInstance != null
        assert view == '/roleSec/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/roleSec/show/1'
        assert controller.flash.message != null
        assert RoleSec.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/roleSec/list'

        populateValidParams(params)
        def roleSec = new RoleSec(params)

        assert roleSec.save() != null

        params.id = roleSec.id

        def model = controller.show()

        assert model.roleSecInstance == roleSec
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/roleSec/list'

        populateValidParams(params)
        def roleSec = new RoleSec(params)

        assert roleSec.save() != null

        params.id = roleSec.id

        def model = controller.edit()

        assert model.roleSecInstance == roleSec
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/roleSec/list'

        response.reset()

        populateValidParams(params)
        def roleSec = new RoleSec(params)

        assert roleSec.save() != null

        // test invalid parameters in update
        params.id = roleSec.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/roleSec/edit"
        assert model.roleSecInstance != null

        roleSec.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/roleSec/show/$roleSec.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        roleSec.clearErrors()

        populateValidParams(params)
        params.id = roleSec.id
        params.version = -1
        controller.update()

        assert view == "/roleSec/edit"
        assert model.roleSecInstance != null
        assert model.roleSecInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/roleSec/list'

        response.reset()

        populateValidParams(params)
        def roleSec = new RoleSec(params)

        assert roleSec.save() != null
        assert RoleSec.count() == 1

        params.id = roleSec.id

        controller.delete()

        assert RoleSec.count() == 0
        assert RoleSec.get(roleSec.id) == null
        assert response.redirectedUrl == '/roleSec/list'
    }
}
