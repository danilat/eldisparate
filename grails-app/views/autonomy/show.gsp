
<%@ page import="de.eldisparate.Autonomy" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autonomy.label', default: 'Autonomy')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.area.label" default="Area" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "area")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.habitants.label" default="Habitants" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "habitants")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.president.label" default="President" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "president")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.pib.label" default="Pib" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "pib")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.totalImports.label" default="Total Imports" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "totalImports")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.totalExports.label" default="Total Exports" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "totalExports")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.gunsImports.label" default="Guns Imports" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "gunsImports")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.gunsExports.label" default="Guns Exports" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "gunsExports")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.imageMapName.label" default="Image Map Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "imageMapName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="autonomy.ranking.label" default="Ranking" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: autonomyInstance, field: "ranking")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${autonomyInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
