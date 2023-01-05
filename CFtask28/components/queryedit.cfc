<cfcomponent>
    <cffunction  name="getEditQuery" access="remote" returnType="any">
        <cfquery name="edit">
            UPDATE pagesDtl
            SET pagename=<cfqueryparam value="#form.pagename#" cfsqltype="cf_sql_varchar">, 
                pagedescs=<cfqueryparam value="#form.description#" cfsqltype="cf_sql_varchar">
            WHERE pageid=<cfqueryparam value="#arguments.list#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn edit>
    </cffunction>
</cfcomponent>