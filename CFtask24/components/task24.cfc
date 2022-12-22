<cfcomponent>
    <cffunction name="emailValidate" access="remote" returnformat="plain">
        <cfargument name="Email" type="any" required="yes">
        <cfargument name="Name" type="any" required="yes">
        <cfquery name="validate" datasource="emailId">
            SELECT count(EmailId) records
            FROM emailId
            WHERE EmailId=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">
        </cfquery>
        <cfif validate.records eq 0>
            <cfquery name="Emailid" datasource="emailId"> 
                INSERT INTO emailId 
                VALUES (<cfqueryparam value="#arguments.Name#" cfsqltype="cf_sql_varchar">, 
                        <cfqueryparam value="#arguments.Email#" cfsqltype="cf_sql_varchar">) 
            </cfquery> 
            <cfreturn "The mail is submit">
        <cfelse>
            <cfreturn "The mail is already there">
        </cfif>
    </cffunction>
</cfcomponent>