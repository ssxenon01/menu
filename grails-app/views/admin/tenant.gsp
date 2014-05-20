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
    <title>Tenant List</title>
</head>

<body>

<div id="content" class="col-lg-10 col-sm-11 ">


<div class="row">

<div class="col-lg-12">
<div class="box">
<div class="box-header">
    <h2><i class="fa fa-edit"></i>Байгууллага нэмэх</h2>
    <div class="box-icon">
        <a href="form-wizard.html#" class="btn-setting"><i class="fa fa-wrench"></i></a>
        <a href="form-wizard.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
        <a href="form-wizard.html#" class="btn-close"><i class="fa fa-times"></i></a>
    </div>
</div>
<div class="box-content">
<div id="MyWizard" class="wizard">
    <ul class="steps">
        <li data-target="#step1" class="active"><span class="badge badge-info">1</span><span class="chevron"></span>Алхам 1</li>
        <li data-target="#step2"><span class="badge">2</span><span class="chevron"></span>Алхам 2</li>
        <li data-target="#step3"><span class="badge">3</span><span class="chevron"></span>Алхам 3</li>
        <li data-target="#step4"><span class="badge">4</span><span class="chevron"></span>Алхам 4</li>
        <li data-target="#step5"><span class="badge">5</span>Алхам 5</li>
    </ul>
    <div class="actions">
        <button type="button" class="btn btn-prev"> <i class="fa fa-arrow-left"></i> Өмнөх</button>
        <button type="button" class="btn btn-success btn-next" data-last="Finish">Дараах <i class="fa fa-arrow-right"></i></button>
    </div>
</div>
<div class="step-content">
    <div class="step-pane active" id="step1">
        <form class="form-horizontal">
            <div class="form-group">
                <label class="control-label" for="input1">Байгууллагын нэр</label>
                <div class="controls">
                    <input type="text" class="form-control" id="input1">
                </div>
            </div>
            <div class="form-group hidden-xs">
                <label class="control-label">Дэлгэрэнгүй</label>
                <div class="btn-toolbar" data-role="editor-toolbar" data-target=".editor">
                    <div class="btn-group">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                        <ul class="dropdown-menu"></ul>
                    </div>
                    <div class="btn-group">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                            <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                            <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                        </ul>
                    </div>
                    <div class="btn-group">
                        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                    </div>
                    <div class="btn-group">
                        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                        <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-outdent"></i></a>
                        <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                    </div>
                    <div class="btn-group">
                        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                    </div>
                    <div class="btn-group">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                        <div class="dropdown-menu input-append">
                            <input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
                            <button class="btn" type="button">Add</button>
                        </div>
                        <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                    </div>
                    <div class="btn-group">
                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                    </div>
                </div>
                <div class="editor">
                    Go ahead&hellip;
                </div>
            </div>
            <div class="form-group">
                <label class="control-label" for="category">Ангилал</label>
                <div class="controls">
                    <g:select id="category" name="category" from="${mn.xenon.Category.list()}" optionKey="id" required="" value="${tenantInstance?.category?.id}" class="many-to-one form-control"/>
                    %{--<input type="text" class="form-control" id="input3">--}%
                </div>
            </div>

        </form>
    </div>
    <div class="step-pane" id="step2">
        <form class="form-horizontal">
            <div class="form-group">
                <label class="control-label" for="selectError30">Plain Select</label>
                <div class="controls">
                    <select id="selectError30" class="form-control">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                        <option>Option 4</option>
                        <option>Option 5</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label" for="selectError0">Modern Select</label>
                <div class="controls">
                    <select id="selectError0" class="form-control" style="width:100%;" data-rel="chosen">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                        <option>Option 4</option>
                        <option>Option 5</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label" for="selectError10">Multiple Select / Tags</label>
                <div class="controls">
                    <select id="selectError10" class="form-control" multiple data-rel="chosen">
                        <option>Option 1</option>
                        <option selected>Option 2</option>
                        <option>Option 3</option>
                        <option>Option 4</option>
                        <option>Option 5</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label" for="selectError20">Group Select</label>
                <div class="controls">
                    <select class="form-control" data-placeholder="Your Favorite Football Team" id="selectError20" data-rel="chosen">
                        <option value=""></option>
                        <optgroup label="NFC EAST">
                            <option>Dallas Cowboys</option>
                            <option>New York Giants</option>
                            <option>Philadelphia Eagles</option>
                            <option>Washington Redskins</option>
                        </optgroup>
                        <optgroup label="NFC NORTH">
                            <option>Chicago Bears</option>
                            <option>Detroit Lions</option>
                            <option>Green Bay Packers</option>
                            <option>Minnesota Vikings</option>
                        </optgroup>
                        <optgroup label="NFC SOUTH">
                            <option>Atlanta Falcons</option>
                            <option>Carolina Panthers</option>
                            <option>New Orleans Saints</option>
                            <option>Tampa Bay Buccaneers</option>
                        </optgroup>
                        <optgroup label="NFC WEST">
                            <option>Arizona Cardinals</option>
                            <option>St. Louis Rams</option>
                            <option>San Francisco 49ers</option>
                            <option>Seattle Seahawks</option>
                        </optgroup>
                        <optgroup label="AFC EAST">
                            <option>Buffalo Bills</option>
                            <option>Miami Dolphins</option>
                            <option>New England Patriots</option>
                            <option>New York Jets</option>
                        </optgroup>
                        <optgroup label="AFC NORTH">
                            <option>Baltimore Ravens</option>
                            <option>Cincinnati Bengals</option>
                            <option>Cleveland Browns</option>
                            <option>Pittsburgh Steelers</option>
                        </optgroup>
                        <optgroup label="AFC SOUTH">
                            <option>Houston Texans</option>
                            <option>Indianapolis Colts</option>
                            <option>Jacksonville Jaguars</option>
                            <option>Tennessee Titans</option>
                        </optgroup>
                        <optgroup label="AFC WEST">
                            <option>Denver Broncos</option>
                            <option>Kansas City Chiefs</option>
                            <option>Oakland Raiders</option>
                            <option>San Diego Chargers</option>
                        </optgroup>
                    </select>
                </div>
            </div>
        </form>
    </div>
    <div class="step-pane" id="step3">
        <form class="form-horizontal">
            <div class="form-group has-warning">
                <label class="control-label" for="inputWarning">First Name</label>
                <div class="controls row">
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="inputWarning">
                    </div>
                    <span class="help-block col-sm-8">Something may have gone wrong</span>
                </div>
            </div>
            <div class="form-group has-error">
                <label class="control-label" for="inputError">Last Name</label>
                <div class="controls row">
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="inputError">
                    </div>
                    <span class="help-block col-sm-8">Please correct the error</span>
                </div>
            </div>
            <div class="form-group has-success">
                <label class="control-label" for="inputSuccess">Phone Number</label>
                <div class="controls row">
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="inputSuccess">
                    </div>
                    <span class="help-block col-sm-8">Woohoo!</span>
                </div>
            </div>

        </form>
    </div>
    <div class="step-pane" id="step4">
        <div class="alert alert-info">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
        </div>
        <p>
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.
        </p>
        <div class="controls">
            <label class="checkbox inline">
                <input type="checkbox" id="inlineCheckbox2" value="option5"> I agree
            </label>
        </div>
    </div>
    <div class="step-pane" id="step5">
        <form class="form-horizontal">

            <div class="form-group">
                <label class="control-label">Fullname:</label>
                <div class="controls">
                    <span class="input-xlarge uneditable-input">Łukasz Holeczek</span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Email:</label>
                <div class="controls">
                    <span class="input-xlarge uneditable-input">lukasz[@]clabs[dot].com</span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Phone:</label>
                <div class="controls">
                    <span class="input-xlarge uneditable-input">+48 123 456 789</span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label"></label>
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox" value="" /> I confirm this information
                    </label>
                </div>
            </div>
        </form>
    </div>

</div>

</div>

</div>

</div><!--/col-->

</div><!--/row-->




</div>

</body>

<menu:dependantJavascript>
    <script src="${g.resource(dir: '/assets/js/',file: 'jquery.hotkeys.min.js')}"></script>
    <script src="${g.resource(dir: '/assets/js/',file: 'jquery.chosen.min.js')}"></script>
    <script src="${g.resource(dir: '/assets/js/',file: 'bootstrap-wysiwyg.min.js')}"></script>
    <script type="text/javascript" src="${g.resource(dir: '/assets/js',file: 'wizard.min.js')}" ></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.editor').wysiwyg();

            /* ---------- FuelUX Wizard ---------- */
        $('#myWizard').wizard();

        /* ---------- Datapicker ---------- */
        $('.datepicker').datepicker();

        /* ---------- Choosen ---------- */
        $('[data-rel="chosen"],[rel="chosen"]').chosen({width: "100%"});

        /* ---------- Placeholder Fix for IE ---------- */
        $('input, textarea').placeholder();

        /* ---------- Auto Height texarea ---------- */
        $('textarea').autosize();
    });
    </script>
</menu:dependantJavascript>
</html>