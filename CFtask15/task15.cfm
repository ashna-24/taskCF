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
            <cfobject component="components/task15" name="multiplyValues" type="component" action="Create">
            <cfset local.multiplyValues = createObject("component","components/task15")>
            <cfset local.res = local.multiplyValues.multiply(1,2)>
            #local.res#
            <cfset local.res = local.multiplyValues.multiply(1,2,3)>
            #local.res#
            <cfset local.res = local.multiplyValues.multiply(1,2,3,4)>
            #local.res#               
        </cfoutput>
    </body>
</html>