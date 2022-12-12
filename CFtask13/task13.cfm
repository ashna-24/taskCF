<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/13task.css">       
        <title></title>
    </head>
    <boby>
        <cfoutput>
            <div class="main">
                <form action="task13.cfm" method="post" name="myform" class="forminput">
                    <input type="text" name="text1" id="text1">
                    <input type="submit" id="submit" name="submit">
                </form>
                <cfinvoke  method="getArrayChar" component="components/task13"> 
            </div>
        </cfoutput>
    <body>
<html>