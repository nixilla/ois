<html>
  <head>
    <meta name="layout" content="coursework" />
  </head>
  <body>
    <div class="leftColumn">
      <h1>Welcome to Online Information System!</h1>
      <h2>About this system</h2>
      <p>The purpose of the system is to show the various connection programmes between bachelor and masters programmes of study. After completion of a bachelor programme at a university, you can proceed to a related masters programme.</p>
      <p>This system has been build using Groovy and Grails and is running on ${application.getServerInfo()}. MySQL is used as the database backend.</p>
      <p>This system is also the CBSD coursework project of two students: Janusz Slota and Nima Fatemi.</p>
      <h2>How to use it?</h2>
      <p>The system is very easy to use (I hope):</p>
      <ol>
        <li>From the drop-down menu, select the institution you've graduated.</li>
        <li>The website will present you with the list of programmes (drop-down box) assigned to the selected institution.</li>
        <li>From this drop-down, select programme you have completed.</li>
        <li>The website will present you with the list of institutions, where (and only where) your diploma is accepted.</li>
        <li>Select institution of your choice.</li>
        <li>The website will present you with the list of available programmes with links to their websites.</li>
      </ol>
      <p>If the university or programme you've completed is missing in the database, you need to add it. You can add university (aka institution) <g:link controller="institution" action="create">here</g:link> and programme <g:link controller="programme" action="create">here</g:link>. Please note that you must add university first.</p>
      <h2>System information:</h2>
      <ul>
        <li>App name: <g:meta name="app.name"></g:meta></li>
        <li>App version: <g:meta name="app.version"></g:meta></li>
        <li>Grails version: <g:meta name="app.grails.version"></g:meta></li>
        <li>JVM version: ${System.getProperty('java.version')}</li>
        <li>Groovy version: ${System.getProperty('groovy.version')}</li>
        <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
        <li>Domains: ${grailsApplication.domainClasses.size()}</li>
        <li>Services: ${grailsApplication.serviceClasses.size()}</li>
        <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
        <li>OS: ${System.getProperty('os.name')} ${System.getProperty('os.arch')} ${System.getProperty('os.version')}</li>
        <li>Server software: ${application.getServerInfo()}</li>
      </ul>
    </div>
    <div class="rightColumn">
      <g:form url="[action:'listJSON',controller:'programme']" method="post" id="homeForm" class="connectionForm">
        <fieldset>
          <label>Please select the institution you've graduated: </label>
          <select name="institution" class="institutionSelect"></select>
        </fieldset>
        <fieldset>
          <label>Please select the level: </label>
          <input type="checkbox" name="level" value="undergraduate" checked="checked" /> Undergraduate
          <input type="checkbox" name="level" value="postgraduate" /> Postgraduate
        </fieldset>
        <fieldset class="programmeSelect">
          <label>Please select the programme you've completed: </label>
          <select name="incoming"></select>
        </fieldset>
        <fieldset class="outgoingSelect">
          <label>Please select the institution of your choice: </label>
          <select name="outgoingInstitution"></select>
        </fieldset>
      </g:form>
      <div class="result"></div>
    </div>
  </body>
</html>
