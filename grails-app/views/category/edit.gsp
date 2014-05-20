<%@ page import="mn.xenon.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="genius">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>
<body>
<div id="content" class="col-lg-10 col-sm-11 ">
    <g:if test="${flash.message}">
        <div class="alert alert-info">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Message!</strong> ${flash.message}
        </div>
    </g:if>
    <g:hasErrors bean="${categoryInstance}">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Error!</strong>
            <g:eachError bean="${categoryInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </div>
    </g:hasErrors>
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-header">
                    <h2><i class="fa fa-edit"></i><g:message code="default.edit.label" args="[entityName]"/></h2>
                    <div class="box-icon">
                        <g:link class="list" action="index"><i class="fa fa-reply"></i></g:link>
                        <g:link class="create" action="create"><i class="fa fa-plus"></i></g:link>
                    </div>
                </div>
                <div class="box-content">
                    <g:form url="[resource: categoryInstance, action: 'update']" method="PUT">
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div><!--/col-->
    </div><!--/row-->

</div>
<!-- end: Content -->
</body>
</html>
