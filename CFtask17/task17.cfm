<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task17.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="task17.cfm" method="post" name="myform" autocomplete="off" class="forminput">
                    <input type="text" name="text1" id="text1">
                    <input type="submit" value="Submit" id="submit" name="submit"> 
                </form> 
            </div>    
            <cfif structKeyExists(form,'submit')>
                <cfinvoke  method="getEvenOdd" component="components/task17" returnVariable="myArray">
                <cfloop array="#myArray#" index="i">
                    #i#
                </cfloop>
            </cfif>
            <cfset structClear(form)>
        </cfoutput>
    </body>
</html>