<cfcomponent>
    <cffunction name="getLogin"  access="remote">
        <cfargument name="uname" default="#form.uname#">
        <cfargument name="password" default="#form.password#">
        <cfif structKeyExists(form,'submit')>
            <cfset session.name = arguments.uname>
            <cfquery name="userLogin" datasource="employee">
                select count(userLogin) records
                from userLogin
                where Username = <cfqueryparam value="#arguments.uname#" cfsqltype="CF_SQL_VARCHAR">
                and Password = <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">
            </cfquery>
            <cfif userLogin.records == 1>
                <cfset Session.flag = 1>
                <cflocation url="welcome.cfm" addtoken="No">
            <cfelse>
                <cflocation url="task27.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>