<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task11th.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="task11.cfm" method="post">
                    <cfinvoke  method="getOutput" component="components/task11">
                </form>
            </div>
        </cfoutput>
    </body>
</html>