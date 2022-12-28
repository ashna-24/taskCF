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
                <form action="" method="post" name="myform" class="forminput">
                    <input type="text" name="text1" id="text1">
                    <input type="submit" id="submit" name="submit">
                </form> 
            </div>
            <cfif structKeyExists(form,'submit')>
                <cfinvoke method="getArrayChar" component="components/task13" returnVariable="result">
                The key word found in "#result#" times!
                <cfset structClear("#form#")>
            </cfif> 
        </cfoutput>
    <body>
<html>