package my.events

class AdminController {

    def index() {

    }

    def pages() {
        [pages: Page.listOrderByMenuOrder(params)]
    }

    def notices() {
        [notices: Notice.listOrderById(params)]
    }

}
