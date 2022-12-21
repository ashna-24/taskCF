<cfcomponent>
    <cffunction  name="getDetails" access="Remote">
        <cfargument name="password" default="#form.password#">
        <cfargument name="userName" default="#form.userName#">
        <cfif structKeyExists(form,"submit")>     
            <cfquery name="userLogin" datasource="employee">
                select Role,UserName
                from loginDtl
                where UserId = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                and Password = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfset session.name = userLogin.UserName >
            <cfset session.userRole = userLogin.Role>
            <cfdump  var="#userLogin.recordCount#">
            <cfif userLogin.recordCount>
                <cfif session.userRole=="user">
                    <cfset Session.userFlag = 1>
                    <cflocation url="user.cfm" addtoken="No">
                <cfelseif session.userRole=="admin">
                    <cfset Session.adminFlag = 1>
                    <cflocation url="admin.cfm" addtoken="No">
                <cfelseif session.userRole=="editor">
                    <cfset Session.editorFlag = 1>
                    <cflocation url="admin.cfm" addtoken="No">
                </cfif>
            <cfelse>
                <cflocation url="task28login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>