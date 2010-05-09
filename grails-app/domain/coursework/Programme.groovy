package coursework

class Programme {
    static belongsTo = [institution : Institution]
    String name
    Level level
    String link

    static constraints = {
        name(blank: false, unique:true)
        link(blank: false)
    }

    String toString() { name }
}
