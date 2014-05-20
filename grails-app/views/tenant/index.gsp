<%@ page import="mn.xenon.Tenant" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="genius">
    <g:set var="entityName" value="${message(code: 'tenant.label', default: 'Tenant')}" />
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
                        <a href="#list-tenant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                        <g:link class="create" action="create"><i class="fa fa-plus"></i></g:link>
                    </div>
                </div>
                <div class="box-content">
                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Date created</th>
                            <th>Date lastUpdated</th>
                            <th>Status</th>
                            <th style="width: 133px;">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${tenantInstanceList}" status="i" var="tenantInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td>${fieldValue(bean: tenantInstance, field: "name")}</td>
                                <td>${fieldValue(bean: tenantInstance, field: "description")}</td>
                                <td><g:formatDate date="${tenantInstance.dateCreated}" /></td>
                                <td><g:formatDate date="${tenantInstance.lastUpdated}" /></td>
                                <td>
                                    <g:if test="${tenantInstance.disabled}">
                                        <span class="label label-danger">Disabled</span>
                                    </g:if>
                                    <g:elseif test="${tenantInstance.draft}">
                                        <span class="label label-default">Draft</span>
                                    </g:elseif>
                                    <g:else>
                                        <span class="label label-success">Active</span>
                                    </g:else>
                                </td>
                                <td>
                                    <g:link action="show" class="btn btn-success"  id="${tenantInstance.id}"><i class="fa fa-search "></i></g:link>
                                    <g:link action="edit" class="btn btn-info"  id="${tenantInstance.id}"><i class="fa fa-edit "></i></g:link>
                                    <g:form url="[resource:tenantInstance, action:'delete']" method="DELETE" style="display:inline-block;">
                                        <input type="hidden" name="_method" value="DELETE" id="_method">
                                        <button name="_action_delete" type="submit" class="btn btn-danger" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i class="fa fa-trash-o "></i></button>
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


</body>
</html>

