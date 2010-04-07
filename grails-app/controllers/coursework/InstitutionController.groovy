package coursework
import grails.converters.*

class InstitutionController {

    def scaffold = Institution

    def listJSON = {
        render Institution.list(params) as JSON
    }
}
