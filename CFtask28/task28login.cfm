<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28style.css">       
        <title>Login</title>
    </head>
    <body>
        <div class="main">
            <cfoutput>
                <div class="content">
                    <h3 class="login">Login</h3>
                    <form action="" method="post" name="myform" class="form">
                        User id: <input type="text" name="userName"  class="text userid" id="userName" required="yes"><br>
                        Password: <input type="password" name="password" class="text" id="password" required="yes"><br>
                        <input type="submit" name="submit" value="Login" class="text submit">
                    </form>
                    <cfif structKeyExists(form,"submit")>
                        <cfinvoke method="getDetails" component="components/task28">
                        <cfset structClear(form)>
                    </cfif>
                </div>
            </cfoutput>
        </div>
    </body>
</html>