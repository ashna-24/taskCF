<cfcomponent>
    <cffunction  name="getFormdata" access="remote">
        <cfargument name="option" type="any" default="#form.option#">
        <cfargument name="date" type="any" default="#form.date#">
        <cfargument name="url" type="any" default="#form.url#">
        <cfargument name="firstname" type="any" default="#form.firstname#">
        <cfargument name="lastname" type="any" default="#form.lastname#">
        <cfargument name="mail" type="any" default="#form.mail#">
        <cfargument name="phone" type="any" default="#form.phone#">
        <cfquery name="form" datasource="wufoo">
            INSERT INTO form 
            VALUES (<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.option#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.date#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.url#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.firstname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.lastname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mail#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.phone#">);
        </cfquery>
    </cffunction>
</cfcomponent>