<cfcomponent>
    <cffunction name="getLogin" access="remote">
        <cfargument name="uname" default="#form.uname#" type="any">
        <cfargument name="password" default="#form.password#" type="any">
        <cfset session.name = arguments.uname>
        <cfquery name="userLogin" datasource="employee">
            SELECT count(*) records
            FROM userLogin
            WHERE UserName = <cfqueryparam value="#arguments.uname#" cfsqltype="CF_SQL_VARCHAR">
            AND Password = <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">;
        </cfquery>
        <cfif userLogin.records == 1>
            <cfset Session.flag = 1>
            <cflocation url="welcome.cfm" addtoken="No">
        <cfelse>
            <cflocation url="task27.cfm" addtoken="No">
            <cfset StructClear(Session)>
        </cfif>
    </cffunction>
</cfcomponent>