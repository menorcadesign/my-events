<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div class="row">
    <g:each in="${notices}">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    ${it.title} - <g:formatDate date="${it.date}" format="dd/mm/yyyy"/>
                </div>
                <div class="panel-body">
                    ${it.noHtmlContent()}
                </div>
                <div class="panel-footer">
                    <g:link controller="notice" action="show" id="${it.id}" class="btn btn-primary"><g:message
                            code="notices.see"/></g:link>
                </div>
            </div>
        </div>
    </g:each>
</div>
</body>
</html>