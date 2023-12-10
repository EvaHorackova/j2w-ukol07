[#ftl]

<!DOCTYPE html>
    <html lang="cs">
        <head>
            <meta charset="UTF-8">
            <title>Blog</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="icon" type="image/png" href="/images/favicon.png">
        </head>
    <body>
        <div class="header">
            <header>
                <h1>Přehled článků</h1>
            </header>
        </div>

        <div class="list">
            [#list seznam]
                [#items as post]
                    <div class="post">
                        <h2>${post.title}</h2>
                        <h3>Autor: ${post.author}</h3>
                        <h4>Publikováno: ${post.published?date?string.long}</h4>
                        <div>Anotace: ${post.perex}</div>
                    </div>
                    <div>
                        <a href="/post/${post.slug}">Přečíst</a>
                    </div>
                [/#items]
            [/#list]
        </div>
    </body>
</html>