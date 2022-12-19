<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfargument  name="name" type="string" default="#form.name#">
        <cfargument  name="description" type="string" default="#form.description#">
        <cfargument  name="file" type="any" default="#form.file#">
        <cfapplication name="GetLeadApp" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>
        <cflock SCOPE="Session" TYPE="Exclusive" TIMEOUT="120">
            <cfset session.name= arguments.name>
            <cfset session.description= arguments.description>
            <cfif len(trim(arguments.file))>
                <cffile action="upload" fileField="file" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png" result="thisResult" destination="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\">
                <cfset session.size = thisResult["filesize"]>
                <cfset session.location = "#thisResult.serverFile#">
                <cfif session.size gte 1024000>
                    <cfscript>
                        try{
                            fileDelete(thisResult["serverfile"]);
                        }
                        catch(any e){
                            writeOutput("File is greater than 1 MB! Please upload again");
                        }
                    </cfscript>
                <cfelse>
                    <p>Thankyou, your file has been uploaded.</p>
                    <cfimage action="resize" width="20" height="20" source="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\fileresize\#session.location#" destination="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\fileresize\#session.location#"  overwrite="true">
                </cfif> 
                <cfset session.sizeKB = "#session.size#"/1000>   
            </cfif>
            <cfreturn "#session.location#">
            <cfreturn "#session.sizeKB#">
            <cfreturn "#session.name#">
            <cfreturn "#session.description#">    
            <!--- <cfreturn "#session.location#">
            <cfreturn "#session.sizeKB#">
            <cfreturn "#session.name#">
            <cfreturn "#session.description#"> --->        
        </cflock>
    </cffunction>
</cfcomponent>