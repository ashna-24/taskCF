<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28style.css">       
        <title>Admin Page</title>
    </head>
    <body>
        <div class="adminbody">
            <cfoutput>
                <cfif structKeyExists(session,'adminFlag')>
                    <div class="userMain">
                        <div class="adminList">
                            <cfinvoke method="getpageDtlList" component="components/admin" returnVariable="pageDtlList">
                            <table>
                                <cfloop query="pageDtlList">
                                    <cfset pageArg=structNew()>
                                    <cfset pageArg.pageid="#pageDtlList.pageid#">
                                    <cfinvoke method="getQueryAdmin" component="components/admin" returnVariable="descList" argumentCollection="#pageArg#">
                                    <tr>
                                        <td><cfoutput>#pageDtlList.pagename#</cfoutput></td>
                                        <td><a href="editPage.cfm?name=#pageDtlList.pagename#&id=#descList.pageid#&desc=#descList.pagedescs#">EDIT</a></td>
                                        <td><a href="delete.cfc?method=deletepage&id=#descList.pageid#">DELETE</a></td>
                                    </tr>
                                </cfloop>
                            </table>
                            <a href="addpage.cfm" class="newOne">ADD A NEW PAGE</a>
                        </div>
                        <div class="adminWelcome">
                            <h3>WELCOME #session.name#</h3>
                        </div>
                        <div class="adminlogout">
                            <a href="task28login.cfm" class="logout"><input type="submit" value="Logout" name="submit" id="submit" class="Logout"></a>
                        </div>
                    </div>
                <cfelse>
                    <cflocation url="task28login.cfm" addtoken="No">
                    <cfset  StructClear(Session)>
                </cfif>
            </cfoutput>
        </div>
    </body>
</html>