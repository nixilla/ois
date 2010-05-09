package coursework

class Level {
    static hasMany = [programme : Programme]
    String name

    static constraints = {
        name(blank: false, unique:true)
    }
    String toString() { name }
}