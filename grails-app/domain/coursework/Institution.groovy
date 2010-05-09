package coursework

class Institution {
    static hasMany = [programme: Programme]
    String name
    String address
    String website

    static constraints = {
        name(blank: false, unique:true)
        address(blank: false)
        website(blank: false)
    }

    String toString() { name }
}
