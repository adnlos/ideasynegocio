package com.ideasynegocios.seguridad



import org.junit.*
import grails.test.mixin.*

@TestFor(UserSecRoleSecController)
@Mock(UserSecRoleSec)
class UserSecRoleSecControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/userSecRoleSec/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.userSecRoleSecInstanceList.size() == 0
        assert model.userSecRoleSecInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.userSecRoleSecInstance != null
    }

    void testSave() {
        controller.save()

        assert model.userSecRoleSecInstance != null
        assert view == '/userSecRoleSec/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/userSecRoleSec/show/1'
        assert controller.flash.message != null
        assert UserSecRoleSec.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/userSecRoleSec/list'

        populateValidParams(params)
        def userSecRoleSec = new UserSecRoleSec(params)

        assert userSecRoleSec.save() != null

        params.id = userSecRoleSec.id

        def model = controller.show()

        assert model.userSecRoleSecInstance == userSecRoleSec
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/userSecRoleSec/list'

        populateValidParams(params)
        def userSecRoleSec = new UserSecRoleSec(params)

        assert userSecRoleSec.save() != null

        params.id = userSecRoleSec.id

        def model = controller.edit()

        assert model.userSecRoleSecInstance == userSecRoleSec
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/userSecRoleSec/list'

        response.reset()

        populateValidParams(params)
        def userSecRoleSec = new UserSecRoleSec(params)

        assert userSecRoleSec.save() != null

        // test invalid parameters in update
        params.id = userSecRoleSec.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/userSecRoleSec/edit"
        assert model.userSecRoleSecInstance != null

        userSecRoleSec.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/userSecRoleSec/show/$userSecRoleSec.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        userSecRoleSec.clearErrors()

        populateValidParams(params)
        params.id = userSecRoleSec.id
        params.version = -1
        controller.update()

        assert view == "/userSecRoleSec/edit"
        assert model.userSecRoleSecInstance != null
        assert model.userSecRoleSecInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/userSecRoleSec/list'

        response.reset()

        populateValidParams(params)
        def userSecRoleSec = new UserSecRoleSec(params)

        assert userSecRoleSec.save() != null
        assert UserSecRoleSec.count() == 1

        params.id = userSecRoleSec.id

        controller.delete()

        assert UserSecRoleSec.count() == 0
        assert UserSecRoleSec.get(userSecRoleSec.id) == null
        assert response.redirectedUrl == '/userSecRoleSec/list'
    }
}
