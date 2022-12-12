<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task10.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="task10.cfm" method="post" name="myform" autocomplete="off">
                    <input type="text" name="text1" id="text1">
                    <input type="text" name="text2" id="text2">
                    <input type="submit" value="Submit" id="submit" name="submit"> 
                    <cfinvoke  method="getStruct" component="components/task10">
                </form> 
            </div>    
        </cfoutput>
    </body>
</html>