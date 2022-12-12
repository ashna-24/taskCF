<cfcomponent>
    <cffunction  name="getWish" access="remote">
        <cfparam  name="form.imageUpload" default="">   
        
        <cfif len(trim(form.imageUpload))>
            <cffile action="upload" fileField="imageUpload"  result="thisResult" destination="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask21\assets\" nameConflict="overwrite">
            <cfset Wish=#thisResult.serverFile#>
        </cfif>
        <cfif isDefined("form.mail")>
            <cfmail from="ashnameenurajan@gmail.com" to="#form.mail#" subject="#form.wish#" type="text" mimeattach="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask21\assets\#Wish#">
                #form.wish# #form.name# !!!
            </cfmail> 
        </cfif>
    </cffunction>
</cfcomponent>