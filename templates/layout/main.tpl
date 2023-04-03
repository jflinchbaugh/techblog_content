yieldUnescaped '<!DOCTYPE html>'
html(lang: 'en') {
    head {
        include template: 'header.tpl'
    }
    newLine()
    body(onload: 'prettyPrint(); targetLinks();') {
        div(id: 'wrap') {
            include template: 'menu.tpl'
            div(class: 'container') {
                bodyContents()
            }
            div(id: 'push') { }
            newLine()
        }
        newLine()
        include template: 'footer.tpl'
        newLine()
        script(src: "${content.rootpath}js/jquery-3.6.4.min.js", '') newLine()
        script(src: "${content.rootpath}js/bootstrap.min.js", '') newLine()
        script(src: "${content.rootpath}js/prettify.js", '') newLine()
        script(src: "${content.rootpath}js/links.js", '') newLine()
    }
}
