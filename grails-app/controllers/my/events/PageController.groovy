package my.events

import grails.transaction.Transactional

class PageController {

    def show(String url) {
        [page: Page.findByUrl(url)]
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
