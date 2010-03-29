
<%@ page import="coursework.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
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
                        
                            <g:sortableColumn property="name" title="${message(code: 'institution.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="address" title="${message(code: 'institution.address.label', default: 'Address')}" />
                        
                            <g:sortableColumn property="website" title="${message(code: 'institution.website.label', default: 'Website')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${institutionInstanceList}" status="i" var="institutionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${institutionInstance.id}">${fieldValue(bean: institutionInstance, field: "name")}</g:link></td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "address")}</td>
                        
                            <td><a href="${fieldValue(bean: institutionInstance, field: "website")}" target="_blank">${fieldValue(bean: institutionInstance, field: "website")}</a></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${institutionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
