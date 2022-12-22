<cfcomponent>
    <cffunction  name="getCount" access="Remote">
        <!--- <cfdump  var="#form#"> --->
        <cftry>
	        <cftry>
                <cffile action="upload" fileField="fileupload" nameConflict="overwrite" result="thisResult" destination="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask26\assets\">
                <cfset local.location = #thisResult.serverFile#>
                <cffile action="read" file="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask26\assets\#local.location#" variable="fieldList">
            <cfcatch type = "any">
                <cflocation  url="index.cfm" addtoken="no">
            </cfcatch>
            </cftry>
            <cfset textObj=createObject("component", "tagCloud").getText(mytext="#fieldList#")>
            <cfset resObj="#textObj.getWordString()#"> 
            <cfloop item="word" collection="#resObj#">
                <cfquery name="textQuery" datasource="employee">
                    SELECT Word, Wordcount 
                    FROM textQueryData
                    WHERE Word = <cfqueryparam value="#structFind(resObj,word)#" cfsqltype="CF_SQL_VARCHAR">
                </cfquery>
                <cfif textQuery.Word eq "">
                    <cfif not isNumeric(structFind(resObj,word))>
                        <cfquery name="queryInsert" datasource="employee">
                            INSERT INTO textQueryData
                            VALUES (<cfqueryparam value="#structFind(resObj,word)#" cfsqltype="CF_SQL_VARCHAR">,1);
                        </cfquery>
                    </cfif>
                <cfelse>
                    <cfif not isNumeric(structFind(resObj,word))>
                        <cfquery name="queryUpdate" datasource="employee">
                            UPDATE textQueryData
                            SET Wordcount= <cfqueryparam value="#textQuery.Wordcount#" cfsqltype="CF_SQL_VARCHAR"> + 1
                            WHERE Word= <cfqueryparam value="#structFind(resObj,word)#" cfsqltype="CF_SQL_VARCHAR">;
                        </cfquery>
                    </cfif>
                </cfif>
            </cfloop>
            <cfset session.getWordString="yes">
            <cflocation  url="index.cfm">
        <cfcatch type="any">
            <cflocation  url="index.cfm" addtoken="no">
        </cfcatch>
        </cftry>
    </cffunction>
</cfcomponent>