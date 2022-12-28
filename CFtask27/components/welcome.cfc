<cfcomponent>
    <cffunction name="logoutField" access="remote">
        <cfif structKeyExists(form,'logout')>
            <cflocation url="task27.cfm" addtoken="No">
        </cfif>
    </cffunction>
</cfcomponent>