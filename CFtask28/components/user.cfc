<cfcomponent>
    <cffunction  name="getQueryUser" returnType="query" access="remote">
        <cfquery name="pageDtlList" datasource="employee">
            SELECT pagename, pagedescs
            FROM pagesDtl
        </cfquery>
        <cfreturn pageDtlList>
    </cffunction>
</cfcomponent>