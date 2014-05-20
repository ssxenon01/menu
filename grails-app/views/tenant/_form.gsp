<%@ page import="mn.xenon.Tenant" %>

<div class="form-group ${hasErrors(bean: tenantInstance, field: 'name', 'has-error')} ">
    <label class="control-label" for="name">
        <g:message code="tenant.name.label" default="Name" />

    </label>
    <g:textField name="name" class="form-control" value="${tenantInstance?.name}" />
</div>

<div class="form-group ${hasErrors(bean: tenantInstance, field: 'description', 'has-error')} ">
    <label class="control-label" for="description">
        <g:message code="tenant.description.label" default="Description" />

    </label>
    <g:textArea name="description" class="form-control" value="${tenantInstance?.description}" />
</div>

<div class="form-group ${hasErrors(bean: tenantInstance, field: 'address', 'has-error')} ">
	<label class="control-label" for="address">
		<g:message code="tenant.address.label" default="Address" />
		
	</label>
	<g:textArea name="address" class="form-control" value="${tenantInstance?.address}" />
</div>

<div class="col-sm-12">
    <div id="map_canvas" class="" style="height: 400px;"></div>
    <g:hiddenField name="location.lng" value="${tenantInstance?.location?.lng}" />
    <g:hiddenField name="location.lat" value="${tenantInstance?.location?.lat}" />
</div>

<div class="form-group ${hasErrors(bean: tenantInstance, field: 'category', 'has-error')} ">
	<label class="control-label" for="category">
		<g:message code="tenant.category.label" default="Category" />
		
	</label>
	<g:select id="category" name="category.id" from="${mn.xenon.Category.list()}" optionKey="id" optionValue="name" value="${tenantInstance?.category?.id}" class="many-to-one form-control"/>
</div>
<div class="form-group ${hasErrors(bean: tenantInstance, field: 'manager', 'has-error')} ">
	<label class="control-label" for="manager">
		<g:message code="tenant.manager.label" default="Manager" />

	</label>
	<g:select id="manager" name="manager.id" from="${auth.User.list()}" optionKey="id" optionValue="username" value="${tenantInstance?.manager?.id}" class="many-to-one form-control"/>
</div>


%{--<div class="form-group ${hasErrors(bean: tenantInstance, field: 'location', 'has-error')} ">
	<label class="control-label" for="location">
		<g:message code="tenant.location.label" default="Location" />
		
	</label>
	
</div>--}%

<div class="form-group ${hasErrors(bean: tenantInstance, field: 'mobile', 'has-error')} col-md-6 col-xs-12">
	<label class="control-label" for="mobile">
		<g:message code="tenant.mobile.label" default="Mobile" />
	</label>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-tablet"></i></span>
            <g:textField name="mobile" class="form-control mobile" value="${tenantInstance?.mobile}" />
        </div>
        <span class="help-block">ex. (976) 9999-9999</span>
    </div>
</div>
<div class="form-group ${hasErrors(bean: tenantInstance, field: 'phone', 'has-error')} col-md-6 col-xs-12">
	<label class="control-label" for="phone">
		<g:message code="tenant.phone.label" default="Phone" />
	</label>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-mobile"></i></span>
            <g:textField name="phone" class="form-control phone" value="${tenantInstance?.phone}" />
        </div>
        <span class="help-block">ex. (976) 11-999999</span>
    </div>
</div>






    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'linkedIn', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="linkedIn">
            <g:message code="tenant.linkedIn.label" default="linkedIn" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-linkedin"></i></span>
                <g:textField name="linkedIn" class="form-control" value="${tenantInstance?.linkedIn}" />
            </div>
            <span class="help-block">ex. http://linkedIn.com/menumagazine</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'flickr', 'has-error')} col-md-6  col-xs-12">
        <label class="control-label" for="flickr">
            <g:message code="tenant.flickr.label" default="flickr" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-flickr"></i></span>
                <g:textField name="flickr" class="form-control" value="${tenantInstance?.flickr}" />
            </div>
            <span class="help-block">ex. http://flickr.com/menumagazine</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'pinterest', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="pinterest">
            <g:message code="tenant.pinterest.label" default="pinterest" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-pinterest"></i></span>
                <g:textField name="pinterest" class="form-control" value="${tenantInstance?.pinterest}" />
            </div>
            <span class="help-block">ex. http://pinterest.com/menumagazine</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'googlePlusId', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="googlePlusId">
            <g:message code="tenant.googlePlusId.label" default="googlePlusId" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-google-plus"></i></span>
                <g:textField name="googlePlusId" class="form-control" value="${tenantInstance?.googlePlusId}" />
            </div>
            <span class="help-block">ex. http://plus.google.com/menumagazine</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'twitterId', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="twitterId">
            <g:message code="tenant.twitterId.label" default="Twitter ID" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-twitter"></i></span>
                <g:textField name="twitterId" class="form-control" value="${tenantInstance?.twitterId}" />
            </div>
            <span class="help-block">ex. @menumagazine</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'facebookUrl', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="facebookUrl">
            <g:message code="tenant.facebookUrl.label" default="Facebook Url" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-facebook"></i></span>
                <g:textField name="facebookUrl" class="form-control" value="${tenantInstance?.facebookUrl}" />
            </div>
            <span class="help-block">ex. http://facebook.com/menumagazine</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'instagram', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="instagram">
            <g:message code="tenant.instagram.label" default="Instagram" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-instagram"></i></span>
                <g:textField name="instagram" class="form-control" value="${tenantInstance?.instagram}" />
            </div>
            <span class="help-block">ex. http://instagram.com/menumagazine</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'youtube', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="youtube">
            <g:message code="tenant.youtube.label" default="Youtube" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-youtube"></i></span>
                <g:textField name="youtube" class="form-control" value="${tenantInstance?.youtube}" />
            </div>
            <span class="help-block">ex. http://youtube.com/user/menu</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'email', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="email">
            <g:message code="tenant.email.label" default="Email" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon">@</span>
                <g:textField name="email" class="form-control" value="${tenantInstance?.email}" />
            </div>
            <span class="help-block">ex. info@example.com</span>
        </div>
    </div>
    <div class="form-group ${hasErrors(bean: tenantInstance, field: 'website', 'has-error')} col-md-6 col-xs-12">
        <label class="control-label" for="website">
            <g:message code="tenant.website.label" default="Website" />
        </label>
        <div class="controls">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-globe"></i></span>
                <g:textField name="website" class="form-control" value="${tenantInstance?.website}" />
            </div>
            <span class="help-block">ex. http://www.google.com</span>
        </div>
    </div>

    <div class="form-group col-md-12 col-xs-12">
        <div class="controls">
            <div class="col-md-6 col-sm-8 col-xs-12">
                <label for="featured"><g:message code="tenant.featured.label" default="Featured" /></label>
                <label class="switch switch-primary">
                    <g:checkBox name="featured" class="switch-input" value="${tenantInstance.featured}" onchange="\$('.featuredUntil-field').toggle()" />
                    <span class="switch-label" data-on="Yes" data-off="No"></span>
                    <span class="switch-handle"></span>
                </label>
            </div>
        </div>
        <div class="controls featuredUntil-field" style="display: none;">
            <div class="input-group">
                <span class="input-group-addon"><label for="featuredUntil"><g:message code="tenant.featuredUntil.label" default="Featured Until" /></label></span>
                <g:datePicker name="featuredUntil" class="form-control" value="${tenantInstance?.featuredUntil}"  precision="day" relativeYears="[0..7]" noSelection="${['':'--']}" default="none"/>
            </div>
        </div>
    </div>


<div class="form-group">
<label class="control-label">Features</label>
<div class="controls">
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="outdoors"><g:message code="tenant.feature.outdoors"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="outdoors" class="switch-input" value="${tenantInstance.outdoors}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>

</div>
<div class="col-md-6 col-sm-8 col-xs-12">

    <label for="withGreatView"><g:message code="tenant.feature.withGreatView"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="withGreatView" class="switch-input" value="${tenantInstance.withGreatView}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="oldSchool"><g:message code="tenant.feature.oldSchool"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="oldSchool" class="switch-input" value="${tenantInstance.oldSchool}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="amongstStrippers"><g:message code="tenant.feature.amongstStrippers"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="amongstStrippers" class="switch-input" value="${tenantInstance.amongstStrippers}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="vintage"><g:message code="tenant.feature.vintage"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="vintage" class="switch-input" value="${tenantInstance.vintage}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="rockClub"><g:message code="tenant.feature.rockClub"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="rockClub" class="switch-input" value="${tenantInstance.rockClub}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="jazzClub"><g:message code="tenant.feature.jazzClub"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="jazzClub" class="switch-input" value="${tenantInstance.jazzClub}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="goodDj"><g:message code="tenant.feature.goodDj"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="goodDj" class="switch-input" value="${tenantInstance.goodDj}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="lounge"><g:message code="tenant.feature.lounge"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="lounge" class="switch-input" value="${tenantInstance.lounge}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>

</div>
<div class="col-md-6 col-sm-8 col-xs-12">

    <label for="irishPub"><g:message code="tenant.feature.irishPub"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="irishPub" class="switch-input" value="${tenantInstance.irishPub}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="sportBar"><g:message code="tenant.feature.sportBar"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="sportBar" class="switch-input" value="${tenantInstance.sportBar}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="romantic"><g:message code="tenant.feature.romantic"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="romantic" class="switch-input" value="${tenantInstance.romantic}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="hipster"><g:message code="tenant.feature.hipster"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="hipster" class="switch-input" value="${tenantInstance.hipster}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="wineBar"><g:message code="tenant.feature.wineBar"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="wineBar" class="switch-input" value="${tenantInstance.wineBar}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="happyHour"><g:message code="tenant.feature.happyHour"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="happyHour" class="switch-input" value="${tenantInstance.happyHour}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="aroundBeautifulPeople"><g:message code="tenant.feature.aroundBeautifulPeople"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="aroundBeautifulPeople" class="switch-input" value="${tenantInstance.aroundBeautifulPeople}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="somewhereQuick"><g:message code="tenant.feature.somewhereQuick"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="somewhereQuick" class="switch-input" value="${tenantInstance.somewhereQuick}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="somePlaceHealthy"><g:message code="tenant.feature.somePlaceHealthy"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="somePlaceHealthy" class="switch-input" value="${tenantInstance.somePlaceHealthy}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>

</div>
<div class="col-md-6 col-sm-8 col-xs-12">

    <label for="vegetarian"><g:message code="tenant.feature.vegetarian"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="vegetarian" class="switch-input" value="${tenantInstance.vegetarian}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="HipHop"><g:message code="tenant.feature.HipHop"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="HipHop" class="switch-input" value="${tenantInstance.HipHop}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="wifi"><g:message code="tenant.feature.wifi"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="wifi" class="switch-input" value="${tenantInstance.wifi}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="smokingRoom"><g:message code="tenant.feature.smokingRoom"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="smokingRoom" class="switch-input" value="${tenantInstance.smokingRoom}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="lowBrow"><g:message code="tenant.feature.lowBrow"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="lowBrow" class="switch-input" value="${tenantInstance.lowBrow}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="cocktails"><g:message code="tenant.feature.cocktails"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="cocktails" class="switch-input" value="${tenantInstance.cocktails}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="hotspot"><g:message code="tenant.feature.hotspot"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="hotspot" class="switch-input" value="${tenantInstance.hotspot}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="discreet"><g:message code="tenant.feature.discreet"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="discreet" class="switch-input" value="${tenantInstance.discreet}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="crowded"><g:message code="tenant.feature.crowded"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="crowded" class="switch-input" value="${tenantInstance.crowded}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>

</div>
<div class="col-md-6 col-sm-8 col-xs-12">

    <label for="hangover"><g:message code="tenant.feature.hangover"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="hangover" class="switch-input" value="${tenantInstance.hangover}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="celebration"><g:message code="tenant.feature.celebration"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="celebration" class="switch-input" value="${tenantInstance.celebration}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="oldPeople"><g:message code="tenant.feature.oldPeople"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="oldPeople" class="switch-input" value="${tenantInstance.oldPeople}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="party"><g:message code="tenant.feature.party"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="party" class="switch-input" value="${tenantInstance.party}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="pizza"><g:message code="tenant.feature.pizza"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="pizza" class="switch-input" value="${tenantInstance.pizza}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="beer"><g:message code="tenant.feature.beer"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="beer" class="switch-input" value="${tenantInstance.beer}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="steak"><g:message code="tenant.feature.steak"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="steak" class="switch-input" value="${tenantInstance.steak}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="cheap"><g:message code="tenant.feature.cheap"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="cheap" class="switch-input" value="${tenantInstance.cheap}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="bbq"><g:message code="tenant.feature.bbq"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="bbq" class="switch-input" value="${tenantInstance.bbq}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>

</div>
<div class="col-md-6 col-sm-8 col-xs-12">

    <label for="goodForKids"><g:message code="tenant.feature.goodForKids"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="goodForKids" class="switch-input" value="${tenantInstance.goodForKids}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="goodForGroups"><g:message code="tenant.feature.goodForGroups"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="goodForGroups" class="switch-input" value="${tenantInstance.goodForGroups}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="vipRoom"><g:message code="tenant.feature.vipRoom"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="vipRoom" class="switch-input" value="${tenantInstance.vipRoom}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="openPastMidnight"><g:message code="tenant.feature.openPastMidnight"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="openPastMidnight" class="switch-input" value="${tenantInstance.openPastMidnight}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="toTalkBusiness"><g:message code="tenant.feature.toTalkBusiness"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="toTalkBusiness" class="switch-input" value="${tenantInstance.toTalkBusiness}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="withSexyPeople"><g:message code="tenant.feature.withSexyPeople"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="withSexyPeople" class="switch-input" value="${tenantInstance.withSexyPeople}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="withFireplace"><g:message code="tenant.feature.withFireplace"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="withFireplace" class="switch-input" value="${tenantInstance.withFireplace}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="reservation"><g:message code="tenant.feature.reservation"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="reservation" class="switch-input" value="${tenantInstance.reservation}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="delivery"><g:message code="tenant.feature.delivery"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="delivery" class="switch-input" value="${tenantInstance.delivery}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>

</div>
<div class="col-md-6 col-sm-8 col-xs-12">

    <label for="takeOut"><g:message code="tenant.feature.takeOut"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="takeOut" class="switch-input" value="${tenantInstance.takeOut}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="creditCard"><g:message code="tenant.feature.creditCard"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="creditCard" class="switch-input" value="${tenantInstance.creditCard}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="parking"><g:message code="tenant.feature.parking"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="parking" class="switch-input" value="${tenantInstance.parking}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="tv"><g:message code="tenant.feature.tv"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="tv" class="switch-input" value="${tenantInstance.tv}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
<div class="col-md-6 col-sm-8 col-xs-12">
    <label for="waiterService"><g:message code="tenant.feature.waiterService"  /></label>
    <label class="switch switch-primary">
        <g:checkBox name="waiterService" class="switch-input" value="${tenantInstance.waiterService}"/>
        <span class="switch-label" data-on="Yes" data-off="No"></span>
        <span class="switch-handle"></span>
    </label>
</div>
</div>

</div>

