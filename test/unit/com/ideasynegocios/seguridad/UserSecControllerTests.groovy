package com.ideasynegocios.seguridad



import org.junit.*
import grails.test.mixin.*

@TestFor(UserSecController)
@Mock(UserSec)
class UserSecControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/userSec/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.userSecInstanceList.size() == 0
        assert model.userSecInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.userSecInstance != null
    }

    void testSave() {
        controller.save()

        assert model.userSecInstance != null
        assert view == '/userSec/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/userSec/show/1'
        assert controller.flash.message != null
        assert UserSec.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/userSec/list'

        populateValidParams(params)
        def userSec = new UserSec(params)

        assert userSec.save() != null

        params.id = userSec.id

        def model = controller.show()

        assert model.userSecInstance == userSec
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/userSec/list'

        populateValidParams(params)
        def userSec = new UserSec(params)

        assert userSec.save() != null

        params.id = userSec.id

        def model = controller.edit()

        assert model.userSecInstance == userSec
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/userSec/list'

        response.reset()

        populateValidParams(params)
        def userSec = new UserSec(params)

        assert userSec.save() != null

        // test invalid parameters in update
        params.id = userSec.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/userSec/edit"
        assert model.userSecInstance != null

        userSec.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/userSec/show/$userSec.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        userSec.clearErrors()

        populateValidParams(params)
        params.id = userSec.id
        params.version = -1
        controller.update()

        assert view == "/userSec/edit"
        assert model.userSecInstance != null
        assert model.userSecInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/userSec/list'

        response.reset()

        populateValidParams(params)
        def userSec = new UserSec(params)

        assert userSec.save() != null
        assert UserSec.count() == 1

        params.id = userSec.id

        controller.delete()

        assert UserSec.count() == 0
        assert UserSec.get(userSec.id) == null
        assert response.redirectedUrl == '/userSec/list'
    }
}
