<cfcomponent>
    <cffunction  name="getpageDtlList" returnType="query" access="remote">
        <cfquery name="pageDtlList" datasource="employee">
            SELECT pageid, pagename, pagedescs
            FROM pagesDtl
        </cfquery>
        <cfreturn pageDtlList>
    </cffunction>
    <cffunction  name="getQueryAdmin" access="remote" returnType="query">
        <cfquery name="descList" datasource="employee">
            SELECT pagedescs, pageid 
            FROM pagesDtl
            WHERE pageid =<cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn descList> 
    </cffunction>
</cfcomponent>