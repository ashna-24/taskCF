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
            <cfif structKeyExists( form,'submit')>
                <cfinvoke method="getLogin" component="components/task27">
                <cfset structClear(form)>
            </cfif>
            <div class="main">
                <h3>Login</h3>
                <div class="form">
                    <form method="post" autocomplete="off" name="myform" class="mainForm">
                        User Name:<input type="text" name="uname" id="uname"><br>
                        Password: <input type="password" name="password" id="pwd"><br>
                        <input type="submit" name="submit" value="Login">
                    </form>
                </div>
            </div>
        </cfoutput>
    </body>
</html>