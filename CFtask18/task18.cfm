<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">     
        <title>Table</title>
    </head>
    <body>
        <cfoutput>
            <cfinvoke method="getSQL" component="components/task18" returnVariable="queryData"> 
            <cfdump var="#queryData#"> 
        </cfoutput>
    </body>
</html>