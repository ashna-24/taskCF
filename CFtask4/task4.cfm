<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">>       
        <title>Form</title>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(form, 'submit')>
                <cfinvoke  method="getDate" component="components/task4" returnVariable="Date">
                <!--- Today's date #Date# <br>
                Month in numeric #numMonth# <br>
                Month in words #wordMonth# <br>
                Last friday date #lastDay# <br>
                Last day of the month #lastM# <br>
                #Fivedays# --->
            </cfif>
            <cfset structClear("#form#")>
        </cfoutput>
    </body>
</html>