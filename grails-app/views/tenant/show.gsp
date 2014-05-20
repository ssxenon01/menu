
<%@ page import="mn.xenon.Tenant" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="genius">
		<g:set var="entityName" value="${message(code: 'tenant.label', default: 'Tenant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


    %{--Start--}%
    <!-- start: Content -->
    <div id="content" class="col-lg-10 col-sm-11 ">



    <ol class="breadcrumb">
        <li><g:link uri="/tenant"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li class="active"><g:message code="default.show.label" args="[entityName]" /></li>
    </ol>

    <div class="row profile">
    <g:if test="${flash.message}">
        <div class="alert alert-info">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Message!</strong> ${flash.message}
        </div>
    </g:if>

    <div class="col-sm-3">

        <div class="row">
            <g:if test="${tenantInstance?.profileImage}">
                <div class="col-xs-7 col-sm-12">
                    <img class="profile-image" src="${tenantInstance?.profileImage}">
                </div>
            </g:if>
            <div class="col-xs-5 col-sm-12">
                <h3>General Information</h3>

                <ul class="profile-details">
                    <g:if test="${tenantInstance?.category}">
                        <li>
                            <div><i class="fa fa-briefcase"></i> <g:message code="tenant.category.label" default="Category" /></div>
                            ${tenantInstance.category?.name}
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.author}">
                        <li>
                            <div><i class="fa fa-user"></i> <g:message code="tenant.author.label" default="Author" /></div>
                            ${tenantInstance.author?.username}
                        </li>
                    </g:if>
                </ul>

                <h3>Contact Information</h3>

                <ul class="profile-details">
                    <g:if test="${tenantInstance?.phone}">
                        <li>
                            <div><i class="fa fa-phone"></i> <g:message code="tenant.phone.label" default="Phone" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="phone"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.mobile}">
                        <li>
                            <div><i class="fa fa-tablet"></i> <g:message code="tenant.mobile.label" default="Mobile" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="mobile"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.email}">
                        <li>
                            <div><i class="fa fa-envelope"></i> <g:message code="tenant.email.label" default="E-Mail" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="email"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.website}">
                        <li>
                            <div><i class="fa fa-globe"></i> <g:message code="tenant.website.label" default="Website" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="website"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.address}">
                        <li>
                            <div><i class="fa fa-map-marker"></i> <g:message code="tenant.address.label" default="Address" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="address"/>
                        </li>
                    </g:if>

                </ul>
                <h3>Social Information</h3>

                <ul class="profile-details">
                    <g:if test="${tenantInstance?.facebookUrl}">
                        <li>
                            <div><i class="fa fa-facebook"></i> <g:message code="tenant.facebookUrl.label" default="facebookUrl" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="facebookUrl"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.twitterId}">
                        <li>
                            <div><i class="fa fa-twitter"></i> <g:message code="tenant.twitterId.label" default="Twitter" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="twitterId"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.googlePlusId}">
                        <li>
                            <div><i class="fa fa-google-plus"></i> <g:message code="tenant.googlePlusId.label" default="Google Plus" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="googlePlusId"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.instagram}">
                        <li>
                            <div><i class="fa fa-instagram"></i> <g:message code="tenant.instagram.label" default="Instagram" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="instagram"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.pinterest}">
                        <li>
                            <div><i class="fa fa-pinterest"></i> <g:message code="tenant.pinterest.label" default="Pinterest" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="pinterest"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.flickr}">
                        <li>
                            <div><i class="fa fa-flickr"></i> <g:message code="tenant.flickr.label" default="Flickr" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="flickr"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.youtube}">
                        <li>
                            <div><i class="fa fa-youtube"></i> <g:message code="tenant.youtube.label" default="Youtube" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="youtube"/>
                        </li>
                    </g:if>
                    <g:if test="${tenantInstance?.linkedIn}">
                        <li>
                            <div><i class="fa fa-linkedin"></i> <g:message code="tenant.linkedIn.label" default="LinkedIn" /></div>
                            <g:fieldValue bean="${tenantInstance}" field="linkedIn"/>
                        </li>
                    </g:if>
                </ul>
            </div>
        </div><!--/row-->

    </div><!--/col-->

    <div class="col-sm-9">

        <div class="box">
            <div class="box-header">
                <h2><i class="fa fa-info"></i><g:fieldValue bean="${tenantInstance}" field="name"/></h2>
                <div class="box-icon">
                    <a href="#show-tenant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                    <g:link class="list" action="index"><i class="fa fa-reply"></i></g:link>
                    <g:link class="create" action="create"><i class="fa fa-plus"></i></g:link>
                </div>
            </div>
            <div class="box-content">
                <div class="row">

                    <div class="col-sm-12">
                        <g:if test="${tenantInstance?.description}">
                            <h2><g:message code="tenant.description.label" default="Description" /></h2>
                            <p><g:fieldValue bean="${tenantInstance}" field="description"/></p>
                        </g:if>


                    </div><!--/col-->
                    <div class="col-sm-12">
                    <div id="map_canvas" class="" style="height: 400px;"></div>
                    </div>


                    %{--<div class="col-sm-7">
                        <h2>My Skills</h2>
                        <ul class="skill-bar">
                            <li>
                                <h5>Web Design</h5>
                                <div class="meter"><span class="lightBlue">40%</span></div>
                            </li>
                            <li>
                                <h5>Wordpress</h5>
                                <div class="meter"><span class="green">80%</span></div>
                            </li>
                            <li>
                                <h5>Branding</h5>
                                <div class="meter"><span class="red">100%</span></div>
                            </li>
                            <li>
                                <h5>SEO Optmization</h5>
                                <div class="meter"><span class="lightOrange">60%</span></div>
                            </li>

                        </ul>

                        <h2>Other Skills</h2>
                        <canvas id="canvas" class="chartjs" height="450" width="450"></canvas>
                    </div><!--/col-->--}%


                </div><!--/row-->

                <br/>
                <g:form url="[resource:tenantInstance, action:'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit btn btn-primary" action="edit" resource="${tenantInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </div>
        </div>

    </div><!--/col-->

    </div><!--/profile-->

    </div>
    <!-- end: Content -->
    %{--End--}%
    <menu:dependantJavascript>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript" src="${resource(dir: 'js/jq-map',file: 'jquery.ui.map.full.min.js')}"></script>
        <script type="text/javascript">
            var mc = $('#map_canvas');
            var map = mc.gmap({'center': '47.923052,106.924535', 'zoom': 12}).bind('init', function(ev, map) {
                <g:if test="${tenantInstance?.location}">
                    mc.gmap('addMarker', {'position': '${tenantInstance?.location?.lat},${tenantInstance?.location?.lng}', 'bounds': false}).click(function() {
                        mc.gmap('openInfoWindow', {'content': '<h1>Hello World!</h1>'}, this);
                    });
                </g:if>
            }).gmap('get', 'map');
            /*$(function() {
                var infoWindow = function() {
                    $('#map_canvas').gmap('openInfoWindow', {'content': '<h1>Hello World!</h1>'}, this);
                }

                var map = $('#map_canvas').gmap({'center': '47.923052,106.924535', 'zoom': 14}).bind('init', function(ev, map) {
                    $('#map_canvas').gmap('addMarker', {'position': '47.923052,106.924535', 'bounds': false}).click(infoWindow);
                }).gmap('get', 'map');

                $(map).addEventListener('click', function(event) {
                    var m = $('#map_canvas');
                    m.gmap('clear','markers');
                    m.gmap('addMarker', {
                        'position': event.latLng,
                        'draggable': false,
                        'bounds': false
                    }).click(infoWindow);
                });
            });*/
        </script>
    </menu:dependantJavascript>
	</body>
</html>
