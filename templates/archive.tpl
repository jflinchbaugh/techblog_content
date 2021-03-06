layout(
    'layout/main.tpl',
    true,
    alltags: alltags,
    pageTitle: 'Archive',
    bodyContents: contents {
        h1('Blog Archive')
        published_posts.collect().groupBy {
            it.date.format('MMMM yyyy')
        }.each { month, posts ->
            h4(month)
            ul {
                posts.each { post ->
                    li {
                        yield "${post.date.format('dd')} - "
                        a(
                            href: "${content.rootpath}${post.uri}",
                            post.title
                        )
                    }
                }
            }
        }
    }
)
