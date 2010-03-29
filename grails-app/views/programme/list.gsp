
<%@ page import="coursework.Programme" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <g:set var="entityName" value="${message(code: 'programme.label', default: 'Programme')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav"><span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span></div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="name" title="${message(code: 'programme.name.label', default: 'Name')}" />

                            <th><g:message code="programme.institution.label" default="Institution" /></th>
                        
                            <g:sortableColumn property="link" title="${message(code: 'programme.link.label', default: 'Link')}" />
                        
                            <th><g:message code="programme.level.label" default="Level" /></th>
                   	    
                            
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${programmeInstanceList}" status="i" var="programmeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${programmeInstance.id}">${fieldValue(bean: programmeInstance, field: "name")}</g:link></td>

                            <td><g:link controller="institution" action="show" id="${programmeInstance?.institution?.id}">${fieldValue(bean: programmeInstance, field: "institution")}</g:link></td>
                        
                            <td><a href="${fieldValue(bean: programmeInstance, field: "link")}" target="_blank"></a></td>
                        
                            <td>${fieldValue(bean: programmeInstance, field: "level")[0]}</td>
                        
                            
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${programmeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
