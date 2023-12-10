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
            <div class="post">
                <h2>${post.title}</h2>
                <h3>Autor: ${post.author}</h3>
                <div>${post.body?no_esc}</div>
                <h4>Publikováno: ${post.published?date?string.long}</h4>
            </div>
            <p><a href="/">Zpět na seznam článků</a></p>
        </body>
    </html>