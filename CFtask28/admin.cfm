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
            <cfif structKeyExists( session,'adminFlag')>
                <div class="main">
                    <div class="form">
                        <h3>WELCOME #session.name#</h3>
                    </div>
                    <div class="form">
                        <a href="task28login.cfm" class="logout"><input type="submit" value="Logout" name="submit" id="submit"></a>
                    </div>
                    <cfquery name="pageDtlList" datasource="employee">
                        SELECT pageid, pagename, pagedescs
                        FROM pagesDtl
                    </cfquery>
                    <table>
                        <cfloop query="pageDtlList">
                            <cfquery name="descList" datasource="employee">
                                SELECT pagedescs,pageid 
                                FROM pagesDtl
                                WHERE pageid = '#pageDtlList.pageid#'
                            </cfquery>
                            <tr>
                                <td><cfoutput>#pageDtlList.pagename#</cfoutput></td>
                                <td><a href="editPage.cfm?name=#pageDtlList.pagename#&id=#descList.pageid#&desc=#descList.pagedescs#">EDIT</a></td>
                                <td><a href="delete.cfc?method=deletepage&id=#descList.pageid#">DELETE</a></td></td>
                            </tr>
                        </cfloop>
                    </table>
                    <a href="addpage.cfm"?>ADD A NEW PAGE</a>
                </div>
            <cfelse>
                <cflocation url="task28login.cfm" addtoken="No">
                <cfset  StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>