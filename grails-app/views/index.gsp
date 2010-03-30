<html>
  <head>
    <meta name="layout" content="coursework" />
  </head>
  <body>
    <div class="leftColumn">
      <h1>Welcome to Online Information System!</h1>
      <h2>About this system</h2>
      <p>The purpose of the system is to show the various connection programmes between bachelor and masters programmes of study. After completion of a bachelor programme at a university, you can proceed to a related masters programme.</p>
      <p>This system has been build using Groovy and Grails and is running on Apache Tomcat. MySQL is used as the database backend.</p>
      <p>This is system is also the CBSD coursework project of two students: Janusz Slota and Nima Fatemi.</p>
      <h2>How to use it?</h2>
      <p>The system is very easy to use (I hope):</p>
      <ol>
        <li>Type in the search box the name of the university you have graduated.</li>
        <li>Select programme you've completed.</li>
        <li>From the drop-down menu select university you wish to attend to.</li>
        <li>The system will present you with the listings of all available programmes.</li>
      </ol>
      <p>If the university or programme you've completed is missing in the database, you need to add it. You can add university (aka institution) <g:link controller="institution" action="create">here</g:link> and programme <g:link controller="programme" action="create">here</g:link>. Please note that you must add university first.</p>
      <h2>System information:</h2>
      <ul>
        <li>App version: <g:meta name="app.version"></g:meta></li>
        <li>Grails version: <g:meta name="app.grails.version"></g:meta></li>
        <li>JVM version: ${System.getProperty('java.version')}</li>
        <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
        <li>Domains: ${grailsApplication.domainClasses.size()}</li>
        <li>Services: ${grailsApplication.serviceClasses.size()}</li>
        <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
      </ul>
    </div>
    <div class="rightColumn">
      <form action="" method="post"><input type="text" name="search" value="" /><input type="submit" value="Search" /></form>
    </div>
  </body>
</html>
