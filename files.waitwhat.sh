<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta property="og:title" content="wait_what_ files" />
    <meta property="og:url" content="https://files.waitwhat.sh/" />
    <meta property="og:image" content="https://waitwhat.sh/favicon.png" />

    <title>wait_what_</title>

    <link rel='icon' type='image/png' href='https://waitwhat.sh/favicon.png'>
    <link rel='stylesheet' href='https://waitwhat.sh/styles.css'>

    <style>
        td.size {
            text-align: right;
        }

        table {
            width: 100%;
        }
    </style>
</head>

<body>
    <div class="center-h">
        <div class="container">
            <div>
                <h1 class="center-h navbar">
                    <a id="navbar-h1" href="/">wait_what_ files</a>
                </h1>

                <br class="navbar">

                <a class="navbar" href="https://files.waitwhat.sh/">index</a>
                <a class="navbar" href="https://files.waitwhat.sh/README.txt">info</a>
                <a class="navbar" href="https://waitwhat.sh/contact/">contact</a>

                <br>

                {{range $i, $crumb := .Breadcrumbs}}
                    <a href="{{html $crumb.Link}}">{{html $crumb.Text}}</a> <span>→</span>
                {{end}}

                <hr class="navbar">
            </div>

            <div id="content">
                <table>
                    <td><a href="..">..</a></td><td></td></tr>

                    {{range .Items}}
                        {{if .IsDir}}
                            <td><a href="{{.URL}}">{{.Name}}</a></td><td class="size">-</td></tr>
                        {{else}}
                            <td><a href="{{.URL}}">{{.Name}}</a></td><td class="size">{{.HumanSize}}</td></tr>
                        {{end}}
                    {{end}}
            </table>
            </div>
        </div>
    </div>
</body>

</html>
