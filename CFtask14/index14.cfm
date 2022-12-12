<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/index.css">      
    </head>
    <body>
        <cfoutput>   
            <h3>The details</h3>
            <div> 
                 <cfinvoke  method="textField" component="compoents/task14" returnVariable="session.location">
                <cfimage source="assets\#session.location#" name="myImage" action="writeToBrowser"><br>
                The Image name = #session.name#<br>
                The Image stored name =#session.location#<br>
                The Image size = #session.sizeKB# KB <br>
                The description = #session.description# <br>
            </div>
        </cfoutput>
    </body>
</html>