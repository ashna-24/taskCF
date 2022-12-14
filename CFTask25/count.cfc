<cfcomponent>
    <cffunction  name="getCount" access="Remote">
        <cftry>
            <cfquery name="queryClear" datasource="employee">
                DELETE FROM textQueryData
            </cfquery>
            <cfset local.textObj=createObject("component", "tagCloud").getText(mytext="#text#")>
            <cfset local.resObj="#textObj.getWordString()#"> 
            <cfloop item="word" collection="#local.resObj#">
                <cfquery name="textQuery" datasource="employee">
                    SELECT Word, Wordcount 
                    FROM textQueryData
                    WHERE Word = <cfqueryparam value="#structFind(local.resObj,word)#" cfsqltype="CF_SQL_VARCHAR">
                </cfquery>
                <cfif textQuery.Word eq "">
                    <cfif not isNumeric(structFind(local.resObj,word))>
                        <cfquery name="queryInsert" datasource="employee">
                            INSERT INTO textQueryData
                            VALUES (<cfqueryparam value="#structFind(local.resObj,word)#" cfsqltype="CF_SQL_VARCHAR">,1);
                        </cfquery>
                    </cfif>
                <cfelse>
                   <cfif not isNumeric(structFind(local.resObj,word))>
                        <cfquery name="queryUpdate" datasource="employee">
                            UPDATE textQueryData
                            SET Wordcount= <cfqueryparam value="#textQuery.Wordcount#" cfsqltype="CF_SQL_VARCHAR"> + 1
                            WHERE Word= <cfqueryparam value="#structFind(local.resObj,word)#" cfsqltype="CF_SQL_VARCHAR">;
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