
<%@ page import="de.eldisparate.Autonomy" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'autonomy.label', default: 'Autonomy')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'autonomy.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'autonomy.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="realName" title="${message(code: 'autonomy.realName.label', default: 'Real Name')}" />
                        
                            <g:sortableColumn property="area" title="${message(code: 'autonomy.area.label', default: 'Area')}" />
                        
                            <g:sortableColumn property="habitants" title="${message(code: 'autonomy.habitants.label', default: 'Habitants')}" />
                        
                            <g:sortableColumn property="president" title="${message(code: 'autonomy.president.label', default: 'President')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${autonomyInstanceList}" status="i" var="autonomyInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${autonomyInstance.id}">${fieldValue(bean: autonomyInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: autonomyInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: autonomyInstance, field: "realName")}</td>
                        
                            <td>${fieldValue(bean: autonomyInstance, field: "area")}</td>
                        
                            <td>${fieldValue(bean: autonomyInstance, field: "habitants")}</td>
                        
                            <td>${fieldValue(bean: autonomyInstance, field: "president")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${autonomyInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
