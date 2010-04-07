
<%@ page import="coursework.Connection" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <g:set var="entityName" value="${message(code: 'connection.label', default: 'Connection')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'connection.id.label', default: 'Id')}" />
                        
                            <th><g:message code="connection.incoming.label" default="Incoming" /></th>
                   	    
                            <th><g:message code="connection.outgoing.label" default="Outgoing" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${connectionInstanceList}" status="i" var="connectionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${connectionInstance.id}">${fieldValue(bean: connectionInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: connectionInstance, field: "incoming")}</td>
                        
                            <td>${fieldValue(bean: connectionInstance, field: "outgoing")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${connectionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
