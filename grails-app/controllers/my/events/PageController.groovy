package my.events

import grails.transaction.Transactional

class PageController {

    def show(Page page) {
        [page: page]
    }

    @Transactional
    doInsert(Page page) {
        page.menuOrder = 0
        page.save()
        redirect controller: 'admin', action: 'pages'
    }

    @Transactional
    doUpdate(Page page) {
        page.save()
        redirect controller: 'admin', action: 'pages'
    }

    @Transactional
    doDelete(Page page) {
        page.delete()
        redirect controller: 'admin', action: 'pages'
    }

}
