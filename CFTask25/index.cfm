<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task25.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(form,'submit')>
                <cfinvoke  method="getText" component="task25.cfm">
            </cfif>
            <cfset structClear(form)>
            <div class="main">
                <form acton=" " method="post" autocomplete="off" name="myform">
                    <textarea name="text" cols="50" rows="5" id="text"></textarea>
                    <input type="submit" name="submit" id="submit">
                </form>
            </div>
        </cfoutput>
    </body>
</html>