<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><g:layoutTitle default="" /> &laquo; Online Information System &raquo;</title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'default.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    <g:javascript library="jquery" /><g:javascript library="app" />
    <g:layoutHead />
  </head>
  <body>
    <div class="wrapper ${params.controller}">
      <div class="header">
        <div class="logo"><img src="${resource(dir:"images",file:"coursework/logo.gif")}" alt="Online Information System" title="Online Information System" /></div>
      </div>
      <div class="menu">
        <ul>
          <li><a class="home" href="${resource(dir: '')}"><span>Home</span></a></li>
          <li><g:link class="institution" controller="institution"><span>Institutions</span></g:link></li>
          <li><g:link class="programme" controller="programme"><span>Programmes</span></g:link></li>
        </ul>
      </div>
      <div class="content">
        <g:layoutBody />
      </div>
      <div class="footer">&copy; 2010 Janusz Slota &amp; Nima Fatemi</div>
    </div>
  </body>
</html>