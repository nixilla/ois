
<%@ page import="coursework.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="coursework" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
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
            <g:hasErrors bean="${institutionInstance}">
            <div class="errors">
                <g:renderErrors bean="${institutionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${institutionInstance?.id}" />
                <g:hiddenField name="version" value="${institutionInstance?.version}" />
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="programme"><g:message code="institution.programme.label" default="Programme" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'programme', 'errors')}">
                                    
<ul>
<g:each in="${institutionInstance?.programme?}" var="p">
    <li><g:link controller="programme" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="programme" action="create" params="['institution.id': institutionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'programme.label', default: 'Programme')])}</g:link>

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
