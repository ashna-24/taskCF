<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfargument  name="name" type="string" default="#form.name#">
        <cfargument  name="description" type="string" default="#form.description#">
        <cfargument  name="file" type="any" default="#form.file#">
        <cfset session.name= arguments.name>
        <cfset session.description= arguments.description>
        <cfif len(trim(arguments.file))>
            <cftry>
                <cffile action="upload" fileField="file" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png,image/webp" result="thisResult" destination="#expandpath(".\assets")#">
            <cfcatch type="any">
                <cfreturn "Only jpg, jpeg, gif, png, webp are allowed.Please enter right one!!">
                <cflocation url="task14.cfm">
            </cfcatch>
            </cftry>
            <cfset session.size = thisResult["filesize"]>
            <cfset session.location = thisResult.serverFile>
            <cfif session.size gte 1024000>
                <cftry>
                    <cfset fileDelete(thisResult["serverfile"])>
                    <cfcatch type="any">
                        <cfreturn "File is greater than 1 MB! Please upload again">
                        <cflocation  url="task14.cfm">
                    </cfcatch>
                </cftry>
            <cfelse>
                <p>Thankyou, your file has been uploaded.</p>
                <cfimage action="resize" width="20" height="20" source="#expandpath(".\assets\#session.location#")#" destination="#expandpath(".\assets\fileresize\#session.location#")#"  overwrite="true">
            </cfif> 
            <cfset session.sizeKB = session.size/1000>   
        </cfif>  
    </cffunction>
</cfcomponent>