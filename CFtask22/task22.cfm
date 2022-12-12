<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task22.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="task22.cfm" method="post" name="myform" autocomplete="off">
                    <cfinvoke  method="getJSONTab" component="components/task22">
                </form> 
            </div>    
        </cfoutput>
    </body>
</html>