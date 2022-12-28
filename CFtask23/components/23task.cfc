<cfcomponent>
    <cffunction  name="getFormdata" access="remote">
        <cfargument name="option" type="any" default="#form.option#">
        <cfargument name="date" type="any" default="#form.date#">
        <cfargument name="url" type="any" default="#form.url#">
        <cfargument name="firstname" type="any" default="#form.firstname#">
        <cfargument name="lastname" type="any" default="#form.lastname#">
        <cfargument name="mail" type="any" default="#form.mail#">
        <cfargument name="phone" type="any" default="#form.phone#">
        <cfif structKeyExists(form, "submit")>
            <cfquery name="form" datasource="wufoo">
                INSERT INTO form 
                VALUES (<cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#arguments.option#">,
                        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#arguments.date#">,
                        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#arguments.url#">,
                        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#arguments.firstname#">,
                        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#arguments.lastname#">,
                        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#arguments.mail#">,
                        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#arguments.phone#">);
            </cfquery>
        </cfif>
    </cffunction>
</cfcomponent>