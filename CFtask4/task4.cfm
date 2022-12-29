<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">      
        <title>Form</title>
    </head>
    <body>
        <cfoutput>
            <cfinvoke  method="getDate" component="components/task4" returnVariable="dateStruct">
            Today's date #dateStruct.TodaysDate# <br>
            Month in numeric #dateStruct.MonthInNumeric# <br>
            Month in words #dateStruct.MonthInWords# <br>
            Last friday date #dateStruct.LastFridayDate# <br>
            Last day of the month #dateStruct.LastDayofTheMonth# <br>
            Previous Five Days,<br>
            <cfloop from="1" to="5" index="i">
                #dateStruct[i]#<br>
            </cfloop>
            <cfset structClear(form)>
        </cfoutput>
    </body>
</html>