package coursework

class Connection {

    Programme incoming
    Programme outgoing

    static constraints = {
        incoming(blank: false)
        outgoing(blank: false)
    }
}
