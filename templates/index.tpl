layout(
    'layout/main.tpl',
    true,
    pageTitle: 'Main',
    alltags: alltags,
    bodyContents: contents {
        published_posts.take(20).each { post ->
            div(class: 'post') {
              h1 {
                a(href: post.uri, post.title)
              }
              div(class: 'post-date', post.date.format('dd MMMM yyyy'))
              div(class: 'post-body') {
                yieldUnescaped post.body
              }
            }
            hr(class: 'clear-fix', '')
        }
        p {
            yield 'Older posts are available in the '
            a(
                href: "${content.rootpath}${config.archive_file}",
                'archive'
            )
            yield '.'
        }
    }
)
