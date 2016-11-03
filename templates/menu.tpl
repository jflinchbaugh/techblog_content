div(class: 'navbar navbar-default navbar-fixed-top', role: 'navigation') {
    div(class: 'container') {
        div(class: 'navbar-header') {
            button(
                type: 'button',
                class: 'navbar-toggle',
                'data-toggle': 'collapse',
                'data-target': '.navbar-collapse'
            ) {
               span(class: 'sr-only', 'Toggle navigation')
               span(class: 'icon-bar', '')
               span(class: 'icon-bar', '')
               span(class: 'icon-bar', '')
            }
            a(
                class: 'navbar-brand',
                href: "${content.rootpath}index.html",
                'John Flinchbaugh'
            )
        }
        div(class: 'navbar-collapse collapse') {
            ul(class: 'nav navbar-nav') {
                li {
                    a(href: "${content.rootpath}archive.html", 'Archive')
                }
                li(class: 'dropdown') {
                    a(
                        href: '#',
                        class: 'dropdown-toggle',
                        'data-toggle': 'dropdown'
                    ) {
                        yieldUnescaped 'Resume '
                        b(class: 'caret', '')
                    }
                    ul(class: 'dropdown-menu') {
                        li {
                            a(
                                href: 'http://www.hjsoft.com/~john/resume.txt',
                                'TXT'
                            )
                        }
                        li {
                            a(
                                href: 'http://www.hjsoft.com/~john/resume.PDF',
                                'PDF'
                            )
                        }
                    }
                }
                li(class: 'dropdown') {
                    a(
                        href: '#',
                        class: 'dropdown-toggle',
                        'data-toggle': 'dropdown'
                    ) {
                        yieldUnescaped 'Tags '
                        b(class: 'caret', '')
                    }
                    ul(class: 'dropdown-menu') {
                        li {
                            div(class: 'row', style: 'width: 20em') {
                                def tags = alltags.collect().toSorted()
                                def half = tags.size() / 2 + 1
                                div(class: 'col-xs-6') {
                                    ul(class: 'list-unstyled') {
                                        tags.take(half).each { t ->
                                            li {
                                                a(
                                                    href: "${content.rootpath}tags/${t.replace(' ', '-')}.html",
                                                    t
                                                )
                                            }
                                        }
                                    }
                                }
                                div(class: 'col-xs-6') {
                                    ul(class: 'list-unstyled') {
                                        tags.drop(half).each { t ->
                                            li {
                                                a(
                                                    href: "${content.rootpath}tags/${t.replace(' ', '-')}.html",
                                                    t
                                                )
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ul(class: 'nav navbar-nav navbar-right') {
                li {
                    a(
                        href: "${content.rootpath}${config.feed_file}",
                        'Subscribe'
                    )
                }
            }
        }
    }
}
