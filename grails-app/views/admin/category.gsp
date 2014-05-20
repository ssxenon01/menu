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
    <title>Category List</title>
</head>

<body>

<!-- start: Content -->
<div id="content" class="col-lg-10 col-sm-11">


<div class="row">
<div class="col-lg-12">
<div class="box">
<div class="box-header" data-original-title>
    <h2><i class="fa fa-user"></i><span class="break"></span><g:message code="default.list.label" args="[entityName]" /></h2>
    <div class="box-icon">
        <a href="${g.createLink(controller: 'admin',action: 'category')}//create" class="btn-plus"><i class="fa fa-plus"></i></a>
    </div>
</div>
<div class="box-content">
<table class="table table-striped table-bordered bootstrap-datatable datatable">
<thead>
<tr>
    <th>Username</th>
    <th>Date registered</th>
    <th>Role</th>
    <th>Status</th>
    <th>Actions</th>
</tr>
</thead>
<tbody>
<g:each var="cat" in="${categoryList}">
    <tr>
        <td>${cat.name}</td>
        <td><g:formatDate date="${cat.dateCreated}" style="short" /></td>
        <td>Member</td>
        <td>
            <span class="label label-warning">Pending</span>
        </td>
        <td>
            <a class="btn btn-success" href="${g.createLink(controller: 'admin',action: 'category',id: cat.id)}">
                <i class="fa fa-search-plus "></i>
            </a>
            <a class="btn btn-info" href="${g.createLink(controller: 'admin',action: 'category',id: cat.id , params: [edit:true])}">
                <i class="fa fa-edit "></i>
            </a>
            <a class="btn btn-danger" href="${g.createLink(controller: 'admin',action: 'category',id: cat.id , params: [delete:true])}">
                <i class="fa fa-trash-o "></i>
            </a>
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

<menu:dependantJavascript>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.datatable').dataTable({
                "sDom": "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-12'i><'col-lg-12 center'p>>",
                "sPaginationType": "bootstrap",
                "oLanguage": {
                    "sLengthMenu": "_MENU_ records per page"
                }
            });
        });
    </script>
</menu:dependantJavascript>
</html>