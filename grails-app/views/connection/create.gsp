
<%@ page import="coursework.Connection" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <g:set var="entityName" value="${message(code: 'connection.label', default: 'Connection')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${connectionInstance}">
            <div class="errors">
                <g:renderErrors bean="${connectionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="incoming"><g:message code="connection.incoming.label" default="Incoming" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: connectionInstance, field: 'incoming', 'errors')}">
                                    <g:select name="incoming.id" from="${coursework.Programme.list()}" optionKey="id" value="${connectionInstance?.incoming?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outgoing"><g:message code="connection.outgoing.label" default="Outgoing" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: connectionInstance, field: 'outgoing', 'errors')}">
                                    <g:select name="outgoing.id" from="${coursework.Programme.list()}" optionKey="id" value="${connectionInstance?.outgoing?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
