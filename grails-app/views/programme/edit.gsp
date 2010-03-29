
<%@ page import="coursework.Programme" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <g:set var="entityName" value="${message(code: 'programme.label', default: 'Programme')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${programmeInstance}">
            <div class="errors">
                <g:renderErrors bean="${programmeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${programmeInstance?.id}" />
                <g:hiddenField name="version" value="${programmeInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="programme.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programmeInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${programmeInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="link"><g:message code="programme.link.label" default="Link" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programmeInstance, field: 'link', 'errors')}">
                                    <g:textField name="link" value="${programmeInstance?.link}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="level"><g:message code="programme.level.label" default="Level" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programmeInstance, field: 'level', 'errors')}">
                                    <g:select name="level.id" from="${coursework.Level.list()}" optionKey="id" value="${programmeInstance?.level?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="institution"><g:message code="programme.institution.label" default="Institution" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: programmeInstance, field: 'institution', 'errors')}">
                                    <g:select name="institution.id" from="${coursework.Institution.list()}" optionKey="id" value="${programmeInstance?.institution?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
