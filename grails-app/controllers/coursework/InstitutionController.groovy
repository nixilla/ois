package coursework
import grails.converters.*

class InstitutionController {

    def scaffold = Institution

    def listJSON = {
        render Institution.list(params) as JSON
    }

    def getCustomInstitution = {
        //def results = Institution.findAll("from coursework.Institution i inner join i.programme p, coursework.Connection c where p = c.outgoing and c.incoming.id = ?", Long.parseLong(params['incoming']))
        def results = Institution.executeQuery("select i,c from coursework.Institution i inner join i.programme p, coursework.Connection c where p = c.outgoing and c.incoming.id = ?", Long.parseLong(params['incoming']))
    }
    def getFromConnectionsJSON = {
        def results = this.getCustomInstitution(params)
        if(!results)
        {
            results = ['result':0]
            render results as JSON
        }
        //else render results.collect() { ['id': it[0].id, 'name': it[0].name] } as JSON
        else
        {
            def z = [:]
            results.each() { if(!z[it[0].id]) z[it[0].id] = ['id': it[0].id, 'name': it[0].name] }
            render z as JSON
        }
    }
    def getProgrammesJSON = {
        def results = this.getCustomInstitution(params)
        if(!results)
        {
            results = ['result':0]
            render results as JSON
        }
        else
        {
            def z = [:]
            results.each() { def obj ->
                def tmp = [:]
                if(obj[0].id == Long.parseLong(params['institution']))
                {
                    if(!z[obj[0].id])
                    {
                        obj[0].programme.each() { p -> if(obj[1].outgoing.id == p.id) tmp[p.id] = ['id': p.id, 'name': p.name, 'link': p.link ] }
                        z[obj[0].id] = ['id': obj[0].id, 'name': obj[0].name, 'website': obj[0].website, 'address': obj[0].address, 'programme': tmp ]
                    }
                    else
                    {
                        obj[0].programme.each() { p -> if(obj[1].outgoing.id == p.id) tmp[p.id] = ['id': p.id, 'name': p.name, 'link': p.link ] }
                        z[obj[0].id].programme += tmp
                    }
                }
            }
            render z as JSON
        }
    }
}
