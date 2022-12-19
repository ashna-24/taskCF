<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task27.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="welcomePage">
                <cfif structKeyExists( session,'flag')>
                    <div>
                        <h1>WELCOME </h1> <br>
                    </div>
                    <form action="task27.cfm" name="myform" method="post" class="welcome">
                        <input type="submit" value="Logout" name="logout" class="logout">
                    </form>
                    <cfif structKeyExists( form,'logout')>
                        <cfinvoke method="logoutField" component="components/task27">
                        <cfset structClear(form)>
                    </cfif>
                <cfelse>
                    <cflocation url="task27.cfm" addtoken="No">
                    <cfset  StructClear(session)>
                </cfif>
                <cfset  StructClear(session)>
            </div>
        </cfoutput>
    </body>
</html>