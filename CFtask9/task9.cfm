<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task9.css">       
        <title>Session</title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="" method="post" name="myform" autocomplete="off">
                    <input type="text" name="text1" id="text1">
                    <input type="text" name="text2" id="text2">
                    <input type="submit" value="Submit" id="submit" name="submit"> 
                </form> 
            </div>
            <cfif structKeyExists(form,'submit')>
                <cfinvoke  method="getStruct" component="components/task9" returnVariable="taskStruct">
                <cfdump var="#session.myStruct#">
                <cfif structKeyExists(session, 'count')>
                    The text "#session.val#" is already present. Cannot add again....  
                </cfif>
                <cfset structClear(form)> 
            </cfif> 
        </cfoutput>
    </body>
</html>