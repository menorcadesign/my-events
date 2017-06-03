<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                ${notice.title} - <g:formatDate date="${notice.date}" format="dd/mm/yyyy"/>
            </div>
            <div class="panel-body">
                ${raw(notice.content)}
            </div>
        </div>
    </div>
</div>
</body>
</html>