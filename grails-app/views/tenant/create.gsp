<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="genius">
    <g:set var="entityName" value="${message(code: 'tenant.label', default: 'Category')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<div id="content" class="col-lg-10 col-sm-11 ">
    <g:if test="${flash.message}">
        <div class="alert alert-info">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Message!</strong> ${flash.message}
        </div>
    </g:if>
    <g:hasErrors bean="${tenantInstance}">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Error!</strong>
            <g:eachError bean="${tenantInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </div>
    </g:hasErrors>

    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-header">
                    <h2><i class="fa fa-edit"></i><g:message code="default.create.label" args="[entityName]" /></h2>
                    <div class="box-icon">
                        <g:link class="list" action="index"><i class="fa fa-reply"></i></g:link>
                    </div>
                </div>
                <div class="box-content">
                    <g:form url="[resource:tenantInstance, action:'save']" >
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div><!--/col-->
    </div><!--/row-->
</div>

<menu:dependantJavascript>
    <script src="${resource(dir:'assets/js',file: 'jquery.maskedinput.min.js')}"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="${resource(dir: 'js/jq-map',file: 'jquery.ui.map.full.min.js')}"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".mobile").mask("(999) 9999-9999");
            $(".phone").mask("(999) 99-999999");

        });
        var map = $('#map_canvas').gmap({'center': '47.923052,106.924535', 'zoom': 14}).bind('init', function(ev, map) {
//            $('#map_canvas').gmap('addMarker', {'position': '47.923052,106.924535', 'bounds': false});
        }).gmap('get', 'map');

        $(map).addEventListener('click', function(event) {
            $('#location\\.lat').val(event.latLng.k);
            $('#location\\.lng').val(event.latLng.A);
            var m = $('#map_canvas');
            m.gmap('clear','markers');
            m.gmap('addMarker', {
                'position': event.latLng,
                'draggable': false,
                'bounds': false
            });
        });
    </script>
</menu:dependantJavascript>
</body>
</html>
