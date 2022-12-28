<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28style.css">       
        <title>Welcome Page</title>
    </head>
    <body>
        <div class="userbody">
            <cfoutput>
                <cfif structKeyExists(session, "userFlag")>
                    <div class="userMain">
                        <div class="userList list">
                            <cfinvoke  method="getQueryUser" returnVariable="pageDtlList" component="components/user">
                            <cfloop query="pageDtlList">
                                <a href="displaypage.cfm?name=#pageDtlList.pagename#">#pageDtlList.pagename#</a>
                            </cfloop>
                        </div>
                        <div class="userWelcome">
                            <h3>WELCOME #session.name#</h3>
                        </div>
                        <div class="userLogout">
                            <a href="task28login.cfm" class="logout"><input type="submit" value="Logout" name="submit" id="submit" class="Logout"></a><br>
                        </div>
                    </div>
                <cfelse>
                    <cflocation url="task28login.cfm" addtoken="No">
                    <cfset StructClear(Session)>
                </cfif>
            </cfoutput>
        </div>
    </body>
</html>