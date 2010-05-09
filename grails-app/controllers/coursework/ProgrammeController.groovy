package coursework
import grails.converters.*

class ProgrammeController {

    def scaffold = Programme

    def listJSON = {
        def institution = Institution.findByName(params.institution.toString())        
        if(institution) render institution.programme.sort{it.name} as JSON
        else
        {
            def tmp = []
            render tmp as JSON
        }
    }
}
