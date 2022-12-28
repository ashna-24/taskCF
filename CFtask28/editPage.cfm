<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/28style.css">       
        <title>Edit Page</title>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,"name")>
                <form name="form" action="" method="post" class="form">
                    Page Name: <input type="text" name="pagename" id="pagenameid" class="form-control edit" value="#url.name#">
                    Page Description:<textarea name="description" id="descid" class="form-control edit" rows="5">#url.desc#</textarea>
                    <input type="submit" name="edit" id="edit" value="Edit"> 	
                </form>
                <cfif structKeyExists(form,'edit')>
                    <cfset editArg=structNew()>
                    <cfset editArg.list ="#url.id#">
                    <cfinvoke method="getEditQuery" component="components/queryedit" returnVariable="edit" argumentCollection="#editArg#">
                    <cflocation url="admin.cfm"> 
                </cfif>
            <cfelse>
                <cflocation url="task28login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>