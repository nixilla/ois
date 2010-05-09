package coursework

import grails.test.*

class InstitutionTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testBlank() {
        mockForConstraintsTests(Institution)
        def institution = new Institution()
        assertFalse institution.validate()
    }
    void testBlankName() {
        mockForConstraintsTests(Institution)
        def institution = new Institution(name:"",address:"123 Street, London, W1 1AA, UK",website:"http://www.example.com")
        assertFalse institution.validate()
        assertEquals 1, institution.errors.errorCount
        assertEquals "blank", institution.errors["name"]
    }

}
