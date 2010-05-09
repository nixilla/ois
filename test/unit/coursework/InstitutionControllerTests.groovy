package coursework

import grails.test.*
import grails.converters.*;


class InstitutionControllerTests extends ControllerUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testListJSON() {
        def inst = new Institution(name:"BBK",address:"London",website:"www")
        mockDomain(Institution,[inst])
        controller.listJSON()
        def json = controller.response.contentAsString
        def list = JSON.parse(json)
        assertEquals "BBK", list[0].name
        assertEquals "London", list[0].address
        assertEquals "www", list[0].website
    }
}
