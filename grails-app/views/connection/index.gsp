
<%@ page import="coursework.Connection" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <title>Connections</title>
    </head>
    <body>
        <div class="leftColumn">
          <h1>Connections from</h1>
          <form action="../programme/listJSON" method="post" id="incomingForm" class="connectionForm">
            <fieldset>
              <label>Please select the institution: </label>
              <select name="institution" class="institutionSelect"></select>
            </fieldset>
            <fieldset>
              <label>Please select the level: </label>
              <input type="checkbox" name="level" value="undergraduate" checked="checked" /> Undergraduate
              <input type="checkbox" name="level" value="postgraduate" /> Postgraduate
            </fieldset>
          </form>
          <div class="result"></div>
        </div>
        <div class="rightColumn">
          <h1>Connections to</h1>
          <form action="../programme/listJSON" method="post" id="outgoingForm" class="connectionForm">
            <fieldset>
              <label>Please select the institution: </label>
              <select name="institution" class="institutionSelect"></select>
            </fieldset>
            <fieldset>
              <label>Please select the level: </label>
              <input type="checkbox" name="level" value="undergraduate" /> Undergraduate
              <input type="checkbox" name="level" value="postgraduate" checked="checked" /> Postgraduate
            </fieldset>
          </form>
          <div class="result"></div>
        </div>
        <div class="content">
          <form action="" method="post" class="saveForm"><input type="submit" value="Save"/></form>
        </div>
    </body>
</html>
