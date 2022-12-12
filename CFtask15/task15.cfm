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
                <form action="task15.cfm" method="post">  
                    <cfobject component="components/task15" name="multiplyValues" type="component" action="Create" >
                    <cfinvoke  method="getOutput" component="components/task15">                  
                </form>
            </div>
        </cfoutput>
    </body>
</html>