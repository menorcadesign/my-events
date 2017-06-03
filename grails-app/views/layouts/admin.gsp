<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.js"/>
    <g:layoutHead/>
</head>
<body>
<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#mobile" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <g:link controller="admin" action="index" class="navbar-brand"><g:message code="app.name"/></g:link>
            </div>
            <div class="collapse navbar-collapse" id="mobile">
                <ul class="nav navbar-nav">
                    <li><g:link controller="admin" action="notices"><g:message code="menus.notices"/></g:link></li>
                    <li><g:link controller="admin" action="pages"><g:message code="menus.pages"/></g:link></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<main class="container"><g:layoutBody/></main>
<footer>

</footer>
</body>
</html>
