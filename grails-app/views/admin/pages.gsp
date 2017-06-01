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
        <ul class="list-group">
            <g:each in="${pages}">
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                            ${it.h1}
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-9">
                            <div style="float: right">
                                <g:link controller="page" action="show" id="${it.id}"
                                        class="btn btn-primary"><g:message code="pages.see"/></g:link>
                                <button class="btn btn-primary" data-toggle="modal"
                                        data-target="#update-page-${it.id}"><g:message
                                        code="pages.update"/></button>
                            </div>
                        </div>
                    </div>
                </li>
            </g:each>
        </ul>
        <button class="btn btn-primary" data-toggle="modal" data-target="#create-page"><g:message
                code="pages.create"/></button>
    </div>
</div>
<div class="modal fade" id="create-page" role="dialog" aria-labelledby="create-page-label">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="create-page-label"><g:message code="pages.create"/></h4>
            </div>
            <g:form controller="page" action="doInsert">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="h1"><g:message code="pages.h1"/></label>
                        <input class="form-control" type="text" id="h1" name="h1" required/>
                    </div>
                    <div class="form-group">
                        <label for="url"><g:message code="pages.url"/></label>
                        <input class="form-control" type="text" id="url" name="url" required/>
                    </div>
                    <div class="form-group">
                        <label for="content"><g:message code="pages.content"/></label>
                        <textarea id="content" name="content"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" value="<g:message code="shared.save"/>"/>
                </div>
            </g:form>
        </div>
    </div>
</div>
<g:each in="${pages}">
    <div class="modal fade" id="update-page-${it.id}" role="dialog" aria-labelledby="update-page-${it.id}-label">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="update-page-${it.id}-label"><g:message code="pages.create"/></h4>
                </div>
                <g:form controller="page" action="doUpdate" id="${it.id}">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="h1-update-${it.id}"><g:message code="pages.h1"/></label>
                            <input class="form-control" type="text" id="h1-update-${it.id}" name="h1" required
                                   value="${it.h1}"/>
                        </div>
                        <div class="form-group">
                            <label for="url-update-${it.id}"><g:message code="pages.url"/></label>
                            <input class="form-control" type="text" id="url-update-${it.id}" name="url" required
                                   value="${it.url}"/>
                        </div>
                        <div class="form-group">
                            <label for="content-update-${it.id}"><g:message code="pages.content"/></label>
                            <textarea id="content-update-${it.id}" name="content">${it.content}</textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <g:link controller="page" action="doDelete" id="${it.id}" class="btn btn-danger"><g:message
                                code="shared.delete"/></g:link>
                        <input type="submit" class="btn btn-primary" value="<g:message code="shared.update"/>"/>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</g:each>
<script>
    tinymce.init({
        selector: 'textarea',
        height: 500,
        theme: 'modern',
        plugins: [
            'advlist autolink lists link image charmap print preview hr anchor pagebreak',
            'searchreplace wordcount visualblocks visualchars code fullscreen',
            'insertdatetime media nonbreaking save table contextmenu directionality',
            'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc help'
        ],
        toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
        toolbar2: 'print preview media | forecolor backcolor emoticons | codesample help'
    });
</script>
</body>
</html>