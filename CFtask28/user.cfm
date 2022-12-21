<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28thtask.css">       
        <title>Welcome Page</title>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session, "userFlag")>
                <div class="main">
                    <div class="form">
                        <h3>WELCOME #session.name#</h3>
                    </div>
                    <div class="form">
                        <a href="task28login.cfm" class="logout"><input type="submit" value="Logout" name="submit" id="submit"></a><br>
                    </div>
                    <cfquery name="pageDtlList" datasource="employee">
                        SELECT pagename, pagedescs
                        FROM pagesDtl
                    </cfquery>
                    <cfloop query="pageDtlList">
                        <a href="displaypage.cfm?name=<cfoutput>#pageDtlList.pagename#</cfoutput>"><cfoutput>#pageDtlList.pagename#</cfoutput></a>
                    </cfloop>
                </div>
            <cfelse>
                <cflocation url="task28login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>