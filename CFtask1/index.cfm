<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task.css">       
        <title>Form</title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="components/task1.cfc?method=getNumbers" method="post" class="forminput">                
                    <input type="text" name="textinput" id="textbox">
                    <input type="submit" value="Submit" id="submit" name="submit">
                </form> 
            </div>
        </cfoutput>
    </body>
</html>