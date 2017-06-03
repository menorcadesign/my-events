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
        <button class="btn btn-primary" data-toggle="modal" data-target="#create-notice"><g:message
                code="notices.create"/></button>
        <hr>
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
<div class="modal fade" id="create-notice" role="dialog" aria-labelledby="create-notice-label">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="create-notice-label"><g:message code="notices.create"/></h4>
            </div>
            <g:form controller="notice" action="doInsert">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="title"><g:message code="notices.title"/></label>
                        <input class="form-control" type="text" id="title" name="title" required/>
                    </div>
                    <div class="form-group">
                        <label for="content"><g:message code="notices.content"/></label>
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
<g:each in="${notices}">
    <div class="modal fade" id="update-notice-${it.id}" role="dialog" aria-labelledby="update-notice-${it.id}-label">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="update-notice-${it.id}-label"><g:message code="notices.update"/></h4>
                </div>
                <g:form controller="notice" action="doInsert">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="title-${it.id}"><g:message code="notices.title"/></label>
                            <input class="form-control" type="text" id="title-${it.id}" name="title" required value="${it.title}"/>
                        </div>
                        <div class="form-group">
                            <label for="content-${it.id}"><g:message code="notices.content"/></label>
                            <textarea id="content-${it.id}" name="content">${it.content}</textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <g:link controller="notice" action="doDelete" id="${it.id}" class="btn btn-danger"><g:message
                                code="shared.delete"/></g:link>
                        <input type="submit" class="btn btn-primary" value="<g:message code="shared.save"/>"/>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</g:each>
<script>
    $(function () {
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
    });
</script>
</body>
</html>