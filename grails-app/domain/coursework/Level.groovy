package coursework

class Level {
    static hasMany = [programme : Programme]
    String name

    static constraints = {
        name(blank: false)
    }
    String toString() { name }
}