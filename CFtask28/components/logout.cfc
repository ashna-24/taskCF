<cfcomponent>
    <cffunction name="logoutField" access="remote">
        <cfif structKeyExists(form,"submit")>
            <cfset StructClear(Session)>
            <cflocation url="task28login.cfm" addtoken="No">
        </cfif>
    </cffunction>
</cfcomponent>