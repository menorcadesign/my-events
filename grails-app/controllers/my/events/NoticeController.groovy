package my.events

import grails.transaction.Transactional

class NoticeController {

    def index() {
        [notices: Notice.listOrderById(params)]
    }

    def show(Notice notice) {
        [notice: notice]
    }

    @Transactional
    doInsert(Notice notice) {
        notice.date = new Date()
        notice.save()
        redirect controller: 'admin', action: 'notices'
    }

    @Transactional
    doUpdate(Notice notice) {
        notice.save()
        redirect controller: 'admin', action: 'notices'
    }

    @Transactional
    doDelete(Notice notice) {
        notice.delete()
        redirect controller: 'admin', action: 'notices'
    }

}
