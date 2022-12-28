<cfcomponent>
    <cffunction  name="getQueryDisplay" access="remote" returnType="query">
        <cfquery name="display" datasource="employee">
            SELECT pagedescs 
            FROM pagesDtl
            WHERE pagename=<cfqueryparam value='#url.name#' cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfreturn display>
    </cffunction>
</cfcomponent>