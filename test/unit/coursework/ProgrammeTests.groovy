package coursework

import grails.test.*

class ProgrammeTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testBlank() {
        mockForConstraintsTests(Programme)
        def prog = new Programme()
        assertFalse prog.validate()
    }
}
