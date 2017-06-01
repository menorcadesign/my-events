package my.events

import grails.transaction.Transactional

class NoticeController {

    def show(Notice notice) {
        [notice: notice]
    }

    @Transactional
    doInsert(Notice notice){
        notice.save()
        redirect controller: 'admin', action: 'notices'
    }

    @Transactional
    doUpdate(Notice notice){
        notice.save()
        redirect controller: 'admin', action: 'notices'
    }

    @Transactional
    deDelete(Notice notice){
        notice.delete()
        redirect controller: 'admin', action: 'notices'
    }

}
