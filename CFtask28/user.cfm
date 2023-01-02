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
                        <div class="userWelcome">
                            <h3>WELCOME #session.name#</h3>
                        </div>
                        <div class="userList">
                            <cfinvoke  method="getQueryUser" returnVariable="pageDtlList" component="components/user">
                            <div class="table">
                                <div class="pageList">
                                    <table>
                                        <cfloop query="pageDtlList">
                                            <tr>
                                                <td class="pageTd">
                                                    <cfset description="#pageDtlList.pagename#">
                                                    <button type="submit" class="button" onclick="dispalyPage('#description#')">#description#</button>
                                                </td>
                                            </tr>
                                        </cfloop>
                                    <table>
                                </div>
                                <div class="message">
                                    <span id="pageMsg"></span>
                                </div>
                            </div>
                        </div>
                        <div class="userLogout">
                            <form method="post" class="logout" name="logout">
                                <input type="submit" value="Logout" name="submit" id="submit" class="Logout">
                            </form>
                            <cfinvoke  method="logoutField" component="components/logout">
                        </div>
                    </div>
                    <script src="assets/jquery.js"></script>
                    <script src="assets/jquery.min.js"></script>
                    <script src="js/task28.js"></script>
                <cfelse>
                    <cflocation url="task28login.cfm" addtoken="No">
                    
                </cfif>
            </cfoutput>
        </div>
    </body>
</html>