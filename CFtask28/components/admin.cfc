<cfcomponent>
    <cffunction  name="getpageDtlList" returnType="query" access="remote">
        <cfquery name="pageDtlList">
            SELECT pageid, pagename, pagedescs
            FROM pagesDtl
        </cfquery>
        <cfreturn pageDtlList>
    </cffunction>
    <cffunction  name="getQueryAdmin" access="remote" returnType="query">
        <cfquery name="descList">
            SELECT pagedescs, pageid 
            FROM pagesDtl
            WHERE pageid =<cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn descList> 
    </cffunction>
</cfcomponent>