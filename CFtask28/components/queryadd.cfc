<cfcomponent>
    <cffunction  name="getQueryAdd" access="remote">
        <cfargument  name="pageId" type="any" default="#form.pageId#">
        <cfargument  name="pagename" type="any" default="#form.pagename#">
        <cfargument  name="pageDesc" type="any" default="#form.pageDesc#">
        <cfquery name="addqueryPage">
            INSERT INTO pagesDtl 
            VALUES(
                <cfqueryparam value="#arguments.pageId#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.pageDesc#" cfsqltype="cf_sql_varchar">);
        </cfquery>
    </cffunction>
</cfcomponent>