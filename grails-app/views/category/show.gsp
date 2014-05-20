
<%@ page import="mn.xenon.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="genius">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


    <!-- start: Content -->
    <div id="content" class="col-lg-10 col-sm-11 ">


    <ol class="breadcrumb">
        <li><g:link uri="/category"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li class="active"><g:message code="default.show.label" args="[entityName]" /></li>
    </ol>

    <div class="row profile">

    <div class="col-sm-3">

        <div class="row">
            <g:if test="${categoryInstance?.mapIcon}">
                <div class="col-xs-7 col-sm-12">
                    <img class="profile-image" src="<g:fieldValue bean="${categoryInstance}" field="mapIcon"/>">
                </div>
            </g:if>
        </div><!--/row-->

    </div><!--/col-->

    <div class="col-sm-9">
        <g:if test="${flash.message}">
            <div class="alert alert-info">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>Message!</strong> ${flash.message}
            </div>
        </g:if>
        <div class="box">
            <div class="box-header">
                <h2><i class="fa fa-info"></i><g:message code="default.show.label" args="[entityName]" /></h2>
                <div class="box-icon">
                    <a href="#show-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                    <g:link class="list" action="index"><i class="fa fa-reply"></i></g:link>
                    <g:link class="create" action="create"><i class="fa fa-plus"></i></g:link>
                </div>
            </div>
            <div class="box-content">
                <div class="row">

                    <ol class="property-list category">

                        <g:if test="${categoryInstance?.dateCreated}">
                            <li class="fieldcontain">
                                <span id="dateCreated-label" class="property-label"><g:message code="category.dateCreated.label" default="Date Created" /></span>

                                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${categoryInstance?.dateCreated}" /></span>

                            </li>
                        </g:if>

                        <g:if test="${categoryInstance?.description}">
                            <li class="fieldcontain">
                                <span id="description-label" class="property-label"><g:message code="category.description.label" default="description" /></span>

                                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${categoryInstance}" field="description"/></span>

                            </li>
                        </g:if>

                        <g:if test="${categoryInstance?.lastUpdated}">
                            <li class="fieldcontain">
                                <span id="lastUpdated-label" class="property-label"><g:message code="category.lastUpdated.label" default="Last Updated" /></span>

                                <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${categoryInstance?.lastUpdated}" /></span>

                            </li>
                        </g:if>



                        <g:if test="${categoryInstance?.name}">
                            <li class="fieldcontain">
                                <span id="name-label" class="property-label"><g:message code="category.name.label" default="Name" /></span>

                                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${categoryInstance}" field="name"/></span>

                            </li>
                        </g:if>

                        <g:if test="${categoryInstance?.suffix}">
                            <li class="fieldcontain">
                                <span id="suffix-label" class="property-label"><g:message code="category.suffix.label" default="Suffix" /></span>

                                <span class="property-value" aria-labelledby="suffix-label"><g:fieldValue bean="${categoryInstance}" field="suffix"/></span>

                            </li>
                        </g:if>

                    </ol>
                    <g:form url="[resource:categoryInstance, action:'delete']" method="DELETE" class="col-sm-12">
                            <g:link class="edit btn btn-primary" action="edit" resource="${categoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete btn btn-danger" action="delete" value="Delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </g:form>

                </div><!--/row-->
            </div>
        </div>


    </div><!--/col-->

    </div><!--/profile-->



    </div>
    <!-- end: Content -->

	</body>
</html>
