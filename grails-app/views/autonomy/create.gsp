

<%@ page import="de.eldisparate.Autonomy" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autonomy.label', default: 'Autonomy')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${autonomyInstance}">
            <div class="errors">
                <g:renderErrors bean="${autonomyInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
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
                                    <label for="realName"><g:message code="autonomy.realName.label" default="Real Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'realName', 'errors')}">
                                    <g:textField name="realName" value="${autonomyInstance?.realName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="area"><g:message code="autonomy.area.label" default="Area" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'area', 'errors')}">
                                    <g:textField name="area" value="${autonomyInstance?.area}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="habitants"><g:message code="autonomy.habitants.label" default="Habitants" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'habitants', 'errors')}">
                                    <g:textField name="habitants" value="${autonomyInstance?.habitants}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="density"><g:message code="autonomy.density.label" default="Density" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'density', 'errors')}">
                                    <g:textField name="density" value="${autonomyInstance?.density}" />
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
                                    <label for="ranking"><g:message code="autonomy.ranking.label" default="Ranking" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'ranking', 'errors')}">
                                    <g:textField name="ranking" value="${autonomyInstance?.ranking}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pibPerCapita"><g:message code="autonomy.pibPerCapita.label" default="Pib Per Capita" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'pibPerCapita', 'errors')}">
                                    <g:textField name="pibPerCapita" value="${autonomyInstance?.pibPerCapita}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="rankingPerCapita"><g:message code="autonomy.rankingPerCapita.label" default="Ranking Per Capita" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'rankingPerCapita', 'errors')}">
                                    <g:textField name="rankingPerCapita" value="${autonomyInstance?.rankingPerCapita}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="totalImports"><g:message code="autonomy.totalImports.label" default="Total Imports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'totalImports', 'errors')}">
                                    <g:textField name="totalImports" value="${autonomyInstance?.totalImports}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="totalExports"><g:message code="autonomy.totalExports.label" default="Total Exports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'totalExports', 'errors')}">
                                    <g:textField name="totalExports" value="${autonomyInstance?.totalExports}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gunsImports"><g:message code="autonomy.gunsImports.label" default="Guns Imports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'gunsImports', 'errors')}">
                                    <g:textField name="gunsImports" value="${autonomyInstance?.gunsImports}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gunsExports"><g:message code="autonomy.gunsExports.label" default="Guns Exports" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: autonomyInstance, field: 'gunsExports', 'errors')}">
                                    <g:textField name="gunsExports" value="${autonomyInstance?.gunsExports}" />
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
