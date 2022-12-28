<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task12.css">       
        <title>Name List</title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="" method="post" name="myform" autocomplete="off">
                    <input type="text" name="text1" id="text1">
                    <input type="submit" value="Submit" id="submit" name="submit"> 
                </form> 
            </div>  
            <cfif structKeyExists(form, "submit")>
                <cfinvoke method="getSQL" component="components/task12" returnVariable="local.firstName">
                Name is "#local.firstName#"<br>
                <cfinclude template="query.cfm">
                <cfset structClear(form)> 
            </cfif>
        </cfoutput>
    </body>
</html>