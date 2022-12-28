<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28style.css">       
        <title>Add Page</title>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,"name")>
                <form action="" method="post" name="myform">
                    PageID: <input type="text" name="pageId" id="pageId">
                    PageName: <input type="text" name="pagename" id="pageName">
                    PageDesc: <textarea name="pageDesc" rows="5" cols="10"></textarea>
                    <input type="submit" value="ADD" name="submit">
                </form>
                <cfif structKeyExists(form,"submit")>
                    <cfinvoke method="getQueryAdd" component="components/queryadd">
                    <cflocation url="admin.cfm"> 
                </cfif>
            <cfelse>
                <cflocation url="task28login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>