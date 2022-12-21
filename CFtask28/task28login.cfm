<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28thtask.css">       
        <title>Login</title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="" method="post" name="form" class="form">
                    User id: <input type="text" name="userName"  class="text" id="userName" required="yes"><br>
                    Password: <input type="password" name="password" class="text" id="password" required="yes"><br>
                    <input type="submit" name="submit" value="Login" class="text">
                </form>
                <cfif structKeyExists( form,"submit")>
                    <cfinvoke method="getDetails" component="components/task28">
                    <cfset structClear(form)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>