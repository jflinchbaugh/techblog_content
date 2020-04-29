layout(
    'layout/main.tpl',
    true,
    pageTitle: content.title,
    alltags: alltags,
    bodyContents: contents {
      div(class: 'post') {
        h1(content.title)
          div(class: 'post-date', content.date.format('dd MMMM yyyy'))
          div(class: 'post-body') {
              yieldUnescaped content.body
          }
          hr(style: 'clear: both', '')
          p {
              yield 'Filed Under: '
              em {
                  content.tags.each { t ->
                      a(
                          href: "${content.rootpath}tags/${t.replace(' ', '-')}.html",
                          t
                      )
                      yield ' '
                  }
              }
          }
       }
    }
)
