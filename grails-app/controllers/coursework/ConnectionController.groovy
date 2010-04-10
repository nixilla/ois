package coursework
import grails.converters.*

class ConnectionController {

    def index = { }

    def saveAll = {

        // parse params
        def outg = []
        if(params.outgoing)
        {
            def stringArray = params.outgoing.split('&');
            for (pid in stringArray)
            {
                def tmp = pid.split('=')
                outg << Long.parseLong(tmp[1])
            }
        }

        // delete all existing connections for defined criteria
        def connections = this.getfor(params)
        if(connections) for(def con in connections) con.delete();

        // add new connections
        for(out in outg) { new Connection(incoming: Programme.get(params['incoming']), outgoing: Programme.get(out)).save() }



        def result = ['success':true]
        render result as JSON
    }

    def getfor = {

        def c = Connection.createCriteria();

        def results = c.list
        {
            incoming
            {
                eq('id',Long.parseLong(params['incoming']))
            }
            outgoing
            {
                institution
                {
                    eq('name',params['institution'])
                }
            }
        }

        return results
    }

    def getforJSON = {
        def results = this.getfor(params)
        if(!results) results = ['result': 0]
        render results as JSON
    }

    def scaffold = Connection
}
