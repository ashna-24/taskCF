<cfcomponent>
    <cffunction name="getDesc" access="remote" returnformat="plain">
        <cfargument name="Email" type="string" required="yes">
        <cfquery name="queryDesc">
            SELECT pagedescs 
            FROM pagesDtl
            WHERE pagename=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">
        </cfquery>
        <cfreturn queryDesc.pagedescs>
    </cffunction>
</cfcomponent>