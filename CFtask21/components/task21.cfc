<cfcomponent>
    <cffunction  name="getWish" access="remote">
        <cfargument  name="name" type="any" default="#form.textName#">
        <cfargument  name="wish" type="any" default="#form.wish#">
        <cfargument  name="mail" type="any" default="#form.mail#">
        <cfif len(trim(form.imageUpload))>
            <cffile action="upload" fileField="imageUpload"  result="thisResult" destination="#expandpath(".\assets")#" nameConflict="overwrite">
            <cfset Wish= thisResult.serverFile>
        </cfif>
        <cfif structKeyExists(form, "mail")>
            <cfmail from="ashnameenurajan@gmail.com" to="#arguments.mail#" subject="#arguments.wish#" type="text" mimeattach="#expandpath(".\assets\#Wish#")#">
            </cfmail>
            <cfreturn "Successfully completed!"> 
        </cfif>
    </cffunction>
</cfcomponent>