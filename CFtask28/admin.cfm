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
                        <div class="adminWelcome">
                            <h3>WELCOME #session.name#</h3>
                        </div>
                        <div class="pageList relative">
                            <div class="adminList">
                                <cfinvoke method="getpageDtlList" component="components/admin" returnVariable="pageDtlList">
                                <table class="adminTable">
                                    <cfloop query="pageDtlList">
                                        <cfset pageArg=structNew()>
                                        <cfset pageArg.pageid= pageDtlList.pageid>
                                        <cfinvoke method="getQueryAdmin" component="components/admin" returnVariable="descList" argumentCollection="#pageArg#">
                                        <tr class="adminTr">
                                            <td class="adminTd">#pageDtlList.pagename#</td>
                                            <td class="adminTr">
                                                <a href="editPage.cfm?name=#pageDtlList.pagename#&id=#descList.pageid#&desc=#descList.pagedescs#">
                                                    EDIT
                                                </a>
                                            </td>
                                            <td class="adminTr">
                                                <a href="components/delete.cfc?method=deletepage&id=#descList.pageid#">
                                                    DELETE
                                                </a>
                                            </td>
                                        </tr>
                                    </cfloop>
                                </table>
                                <a href="addpage.cfm" class="newOne">ADD A NEW PAGE</a>
                            </div>
                            <div class="adminlogout">
                                <form method="post" class="logout" name="logout">
                                    <input type="submit" value="Logout" name="submit" id="submit" class="Logout">
                                </form>
                                <cfinvoke  method="logoutField" component="components/logout">
                            </div>
                        </div>
                    </div>
                <cfelse>
                    <cflocation url="task28login.cfm" addtoken="No">
                </cfif>
            </cfoutput>
        </div>
    </body>
</html>