<%@ page import="mn.xenon.Category" %>

<div class="form-group ${hasErrors(bean: categoryInstance, field: 'name', 'has-error')} ">
    <label for="name">
        <g:message code="category.name.label" default="Name" />

    </label>
    <g:textField name="name" value="${categoryInstance?.name}" class="form-control"/>
</div>
<div class="form-group ${hasErrors(bean: categoryInstance, field: 'suffix', 'has-error')} ">
    <label for="suffix">
        <g:message code="category.suffix.label" default="Suffix" />

    </label>
    <g:textField name="suffix" value="${categoryInstance?.suffix}" class="form-control"/>
</div>
<div class="form-group ${hasErrors(bean: categoryInstance, field: 'parent', 'has-error')} ">
    <label for="parent">
        <g:message code="category.parent.label" default="Parent" />

    </label>
    <g:select id="parent" name="parent.id" from="${mn.xenon.Category.findAllByIdNotEqual(categoryInstance?.id)}" optionKey="id" optionValue="name" value="${categoryInstance?.parent?.id}" class="many-to-one form-control"/>
</div>
<div class="form-group ${hasErrors(bean: categoryInstance, field: 'description', 'has-error')} ">
	<label for="description">
		<g:message code="category.description.label" default="description" />
		
	</label>
	<g:textArea name="description" value="${categoryInstance?.description}" class="form-control"/>
</div>

<div class="form-group ${hasErrors(bean: categoryInstance, field: 'mapIcon', 'has-error')} ">
	<label for="mapIcon">
		<g:message code="category.mapIcon.label" default="Map Icon" />
		
	</label>
	<g:textField name="mapIcon" value="${categoryInstance?.mapIcon}" class="form-control"/>
</div>



