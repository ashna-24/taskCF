<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28thtask.css">       
        <title>Display Page</title>
    </head>
    <body>
         <cfoutput>
            <cfif structKeyExists( session,"name")>
                <cfquery name="display" datasource="employee">
                    SELECT pagedescs 
                    FROM pagesDtl
                    WHERE pagename=<cfqueryparam value='#url.name#' cfsqltype="CF_SQL_VARCHAR">
                </cfquery>
                <div class="main">
                    <span>Page Name:</span>
                    <span><cfoutput>#url.name#</cfoutput></span><br>
                    <span>Page Description:</span>
                    <span><cfoutput> #display.pagedescs# </cfoutput></span>
                </div>
            </cfif>    
        </cfoutput>
    </body>
</html>