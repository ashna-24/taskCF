<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task11th.css">       
        <title>Multiply</title>
    </head>
    <body>
        <cfoutput>
            <cfinvoke method="getOutput" component="components/task11" returnVariable="local.result">
            #local.result.result1# 
            #local.result.result2# 
            #local.result.result3#
            <cfset structClear(form)> 
        </cfoutput>
    </body>
</html>