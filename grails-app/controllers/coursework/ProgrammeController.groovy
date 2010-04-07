package coursework
import grails.converters.*

class ProgrammeController {

    def scaffold = Programme

    def listJSON = {
        def institution = Institution.findByName(params.institution.toString())
        render institution.programme as JSON
    }
    def testParams = {
        render params.level.class
    }
}
