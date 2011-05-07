

<%@ page import="de.eldisparate.Autonomy" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autonomy.label', default: 'Autonomy')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${autonomyInstance}">
            <div class="errors">
                <g:renderErrors bean="${autonomyInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${autonomyInstance?.id}" />
                <g:hiddenField name="version" value="${autonomyInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="name"><g:message code="autonomy.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${autonomyInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="area"><g:message code="autonomy.area.label" default="Area" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'area', 'errors')}">
                                    <g:textField name="area" value="${fieldValue(bean: autonomyInstance, field: 'area')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="habitants"><g:message code="autonomy.habitants.label" default="Habitants" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'habitants', 'errors')}">
                                    <g:textField name="habitants" value="${fieldValue(bean: autonomyInstance, field: 'habitants')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="president"><g:message code="autonomy.president.label" default="President" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'president', 'errors')}">
                                    <g:textField name="president" value="${autonomyInstance?.president}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pib"><g:message code="autonomy.pib.label" default="Pib" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'pib', 'errors')}">
                                    <g:textField name="pib" value="${autonomyInstance?.pib}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="totalImports"><g:message code="autonomy.totalImports.label" default="Total Imports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'totalImports', 'errors')}">
                                    <g:textField name="totalImports" value="${fieldValue(bean: autonomyInstance, field: 'totalImports')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="totalExports"><g:message code="autonomy.totalExports.label" default="Total Exports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'totalExports', 'errors')}">
                                    <g:textField name="totalExports" value="${fieldValue(bean: autonomyInstance, field: 'totalExports')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gunsImports"><g:message code="autonomy.gunsImports.label" default="Guns Imports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'gunsImports', 'errors')}">
                                    <g:textField name="gunsImports" value="${fieldValue(bean: autonomyInstance, field: 'gunsImports')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="gunsExports"><g:message code="autonomy.gunsExports.label" default="Guns Exports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'gunsExports', 'errors')}">
                                    <g:textField name="gunsExports" value="${fieldValue(bean: autonomyInstance, field: 'gunsExports')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="imageMapName"><g:message code="autonomy.imageMapName.label" default="Image Map Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'imageMapName', 'errors')}">
                                    <g:textField name="imageMapName" value="${autonomyInstance?.imageMapName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ranking"><g:message code="autonomy.ranking.label" default="Ranking" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'ranking', 'errors')}">
                                    <g:textField name="ranking" value="${autonomyInstance?.ranking}" />
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
