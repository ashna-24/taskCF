<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task4.css">       
        <title>Form</title>
    </head>
    <body>
        <cfoutput>
           <div class="main">
                <form action="components/task4.cfc?method=getDate" method="post" name="myform">
                    <input type="submit" name="submit" id="submit">
                </form>
           </div>
        </cfoutput>
    </body>
</html>