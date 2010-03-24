class BootStrap {

     def init = { servletContext ->
         new coursework.Level(name:"Undergraduate").save()
         new coursework.Level(name:"Postgraduate").save()
     }
     def destroy = {
     }
} 