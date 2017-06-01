package my.events

class Notice {

    Date date
    String title
    String content

    static constraints = {

    }

    static mapping = {
        content type: 'text'
    }

}
