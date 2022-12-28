<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">      
        <title>Form</title>
    </head>
    <body>
        <cfoutput>
            <cfinvoke  method="getDate" component="components/task4" returnVariable="local.dateStruct">
            Today's date #local.dateStruct.TodaysDate# <br>
            Month in numeric #local.dateStruct.MonthInNumeric# <br>
            Month in words #local.dateStruct.MonthInWords# <br>
            Last friday date #local.dateStruct.LastFridayDate# <br>
            Last day of the month #local.dateStruct.LastDayofTheMonth# <br>
            Previous Five Days,<br>
            <cfloop from="1" to="5" index="i">
                #local.dateStruct[i]#<br>
            </cfloop>
            <cfset structClear(form)>
        </cfoutput>
    </body>
</html>