
<%@ page import="coursework.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
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
            <g:hasErrors bean="${institutionInstance}">
            <div class="errors">
                <g:renderErrors bean="${institutionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="institution.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${institutionInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="institution.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${institutionInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="website"><g:message code="institution.website.label" default="Website" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'website', 'errors')}">
                                    <g:textField name="website" value="${institutionInstance?.website}" />
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
