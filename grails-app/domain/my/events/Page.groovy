package my.events

class Page {

    int menuOrder
    String url
    String h1
    String content

    static constraints = {
        url unique: true
    }

    static mapping = {
        content type: 'text'
    }

}
