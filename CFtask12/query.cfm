<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task12.css">       
        <title>Query</title>
    </head>
    <body>
        <cfinvoke method="getQueryempQuery" component="components/query" returnVariable="empQuery">
        <cfoutput query="empQuery">
            #empQuery.FirstName# #empQuery.LastName#<br>
        </cfoutput>
    </body>
</html>