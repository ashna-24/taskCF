<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfapplication name="GetLeadApp" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>
        <cflock SCOPE="Session" TYPE="Exclusive" TIMEOUT="120">
            <cfif structKeyExists(form, 'submit')>
                <cfset session.name= form.name>
                <cfset session.description= form.description>
                <cfif len(trim(form.file))>
                    <cffile action="upload" fileField="file" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png" result="thisResult" destination="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\">
                    <cfset session.size = thisResult["filesize"]>
                    <cfset session.location = #thisResult.serverFile#>
                    <cfif session.size gte 1024000>
                        <cfscript>
                            try{
                                fileDelete(thisResult["serverfile"]);
                            }
                            catch(any e){
                                writeOutput("file is greater than 1 MB! please upload again ");
                            }
                        </cfscript>
                    <cfelse>
                        <p>Thankyou, your file has been uploaded.</p>
                        <cfimage action="resize" width="20" height="20" source="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\#session.location#" destination="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\fileresize\#session.location#"  overwrite="true">
                    </cfif>    
                </cfif>    
            </cfif>
            <cfset session.sizeKB = #session.size#/1000>
            <cfreturn "#session.location#">
            <cfreturn "#session.sizeKB#">
            <cfreturn "#session.name#">
            <cfreturn "#session.description#">
        </cflock>
    </cffunction>
</cfcomponent>