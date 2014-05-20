
<%@ page import="mn.xenon.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-category" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list category">
			
				<g:if test="${categoryInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="category.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="user" action="show" id="${categoryInstance?.author?.id}">${categoryInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="category.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${categoryInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.desription}">
				<li class="fieldcontain">
					<span id="desription-label" class="property-label"><g:message code="category.desription.label" default="Desription" /></span>
					
						<span class="property-value" aria-labelledby="desription-label"><g:fieldValue bean="${categoryInstance}" field="desription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="category.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${categoryInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.mapIcon}">
				<li class="fieldcontain">
					<span id="mapIcon-label" class="property-label"><g:message code="category.mapIcon.label" default="Map Icon" /></span>
					
						<span class="property-value" aria-labelledby="mapIcon-label"><g:fieldValue bean="${categoryInstance}" field="mapIcon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="category.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${categoryInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.parent}">
				<li class="fieldcontain">
					<span id="parent-label" class="property-label"><g:message code="category.parent.label" default="Parent" /></span>
					
						<span class="property-value" aria-labelledby="parent-label"><g:link controller="category" action="show" id="${categoryInstance?.parent?.id}">${categoryInstance?.parent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.profileImage}">
				<li class="fieldcontain">
					<span id="profileImage-label" class="property-label"><g:message code="category.profileImage.label" default="Profile Image" /></span>
					
						<span class="property-value" aria-labelledby="profileImage-label"><g:fieldValue bean="${categoryInstance}" field="profileImage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.suffix}">
				<li class="fieldcontain">
					<span id="suffix-label" class="property-label"><g:message code="category.suffix.label" default="Suffix" /></span>
					
						<span class="property-value" aria-labelledby="suffix-label"><g:fieldValue bean="${categoryInstance}" field="suffix"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:categoryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${categoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${"<i class=\"fa fa-trash-o \"></i>"}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
