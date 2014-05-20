<%--
  Created by IntelliJ IDEA.
  User: xenon
  Date: 5/7/14
  Time: 17:15
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="genius" />
    <title>Category Edit</title>
</head>

<body>

<!-- start: Content -->
<div id="content" class="col-lg-10 col-sm-11 ">

<g:form name="cat-form" role="form" controller="admin" action="category" method="POST" id="${cat?.id}">
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header">
                <h2><i class="fa fa-edit"></i>Category Form</h2>
                <div class="box-icon">
                    <a href="#" onclick="document.getElementById('cat-form').reset();" class="btn-refresh"><i class="fa fa-refresh"></i></a>
                </div>
            </div>
            <div class="box-content">

                    <div class="form-group">
                        <div class="controls">
                            <div class="input-prepend input-group">
                                <span class="input-group-addon">Нэр</span><g:textField name="name" class="form-control" size="16" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <div class="input-prepend input-group">
                                <span class="input-group-addon">Suffix</span><g:textField name="suffix" class="form-control" size="16" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="parent">Parent</label>
                        <div class="controls">
                            <g:select name="parent" from="${mn.xenon.Category.list()}" optionValue="id" optionKey="name" class="form-control" data-rel="chosen" />
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Save changes</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>

            </div>
        </div>
    </div><!--/col-->

</div><!--/row-->

</g:form>





</div>
<!-- end: Content -->

</body>

<menu:dependantJavascript>
    <script src="${g.resource(dir: '/assets/js/',file: 'jquery.chosen.min.js')}"></script>
    <script type="text/javascript">
        /* ---------- Datapicker ---------- */
        $('.date-picker').datepicker();

        /* ---------- Choosen ---------- */
        $('[data-rel="chosen"],[rel="chosen"]').chosen({width: "100%"});

        /* ---------- Placeholder Fix for IE ---------- */
        $('input, textarea').placeholder();


    </script>
</menu:dependantJavascript>
</html>