
<%@ page import="mn.xenon.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="genius">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

    <!-- start: Content -->
    <div id="content" class="col-lg-10 col-sm-11">

        <g:if test="${flash.message}">
            <div class="alert alert-info">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>Message!</strong> ${flash.message}
            </div>
        </g:if>
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-header" data-original-title>
                        <h2><i class="fa fa-user"></i><span class="break"></span><g:message code="default.list.label" args="[entityName]" /></h2>
                        <div class="box-icon">
                            <a href="#list-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                            <g:link class="create" action="create"><i class="fa fa-plus"></i></g:link>
                        </div>
                    </div>
                    <div class="box-content">
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Date created</th>
                                <th>Date lastUpdated</th>
                                <th>Description</th>
                                <th>mapIcon</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>${fieldValue(bean: categoryInstance, field: "name")}</td>
                                    <td>${fieldValue(bean: categoryInstance, field: "desription")}</td>
                                    <td><g:formatDate date="${categoryInstance.dateCreated}" /></td>
                                    <td><g:formatDate date="${categoryInstance.lastUpdated}" /></td>
                                    <td>${fieldValue(bean: categoryInstance, field: "mapIcon")}</td>
                                    <td>
                                        <g:link action="edit" class="btn btn-info"  id="${categoryInstance.id}"><i class="fa fa-edit "></i></g:link>
                                        <g:form url="[resource:categoryInstance, action:'delete']" method="DELETE" style="display:inline-block;">
                                            <g:actionSubmit class="delete btn btn-danger" action="delete" value="DELETE" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        </g:form>
                                    </td>

                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!--/col-->

        </div><!--/row-->



    </div>
    <!-- end: Content -->



		%{--<div id="list-category" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="category.author.label" default="Author" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'category.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="desription" title="${message(code: 'category.desription.label', default: 'Desription')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'category.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="mapIcon" title="${message(code: 'category.mapIcon.label', default: 'Map Icon')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "author")}</g:link></td>
					
						<td><g:formatDate date="${categoryInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: categoryInstance, field: "desription")}</td>
					
						<td><g:formatDate date="${categoryInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: categoryInstance, field: "mapIcon")}</td>
					
						<td>${fieldValue(bean: categoryInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${categoryInstanceCount ?: 0}" />
			</div>
		</div>--}%
	</body>
</html>
