<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title><g:layoutTitle default="" /> &laquo; Online Information System &raquo;</title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'default.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'jquery.liveSearch.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />

<g:javascript library="jquery" /><g:javascript library="jquery.livequery" /><g:javascript library="jquery.liveSearch" /><g:javascript library="app" />
    <g:layoutHead />
  </head>
  <body>
    <div class="wrapper ${params.controller}">
      <div class="header">
        <div class="logo"><img src="${resource(dir:"images",file:"coursework/logo.gif")}" alt="Online Information System" title="Online Information System" /></div>
      </div>
      <div class="menu">
        <ul>
          <li><a class="home" href="${createLink(uri: '/')}"><span>Home</span></a></li>
          <li><g:link class="institution" controller="institution"><span>Institutions</span></g:link></li>
          <li><g:link class="programme" controller="programme"><span>Programmes</span></g:link></li>
          <li><g:link class="connection" controller="connection"><span>Connections</span></g:link></li>
        </ul>
      </div>
      <div class="content">
        <g:layoutBody />
      </div>
      <div class="footer">&copy; 2010 <a href="http://janusz.slota.name/blog/" target="_blank">Janusz Slota</a> &amp; <a href="http://www.dcs.bbk.ac.uk/~nfatem02/" target="_blank">Nima Fatemi</a></div>
    </div>
  </body>
</html>