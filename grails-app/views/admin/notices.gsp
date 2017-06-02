<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin"/>
    <title><g:message code="titles.pages"/></title>
    <asset:javascript src="tinymce/tinymce.min.js"/>
    <asset:javascript src="tinymce/jquery.tinymce.min.js"/>
    <asset:javascript src="tinymce/themes/modern/theme.min.js"/>
</head>
<body>
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <ul>
            <g:each in="${notices}">
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                            ${it.title}
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-9">
                            <div style="float: right">
                                <g:link controller="notice" action="show" id="${it.id}"
                                        class="btn btn-primary" target="_blank"><g:message code="notices.see"/></g:link>
                                <button class="btn btn-primary" data-toggle="modal"
                                        data-target="#update-notice-${it.id}"><g:message
                                        code="notices.update"/></button>
                            </div>
                        </div>
                    </div>
                </li>
            </g:each>
        </ul>
    </div>
</div>
</body>
</html>