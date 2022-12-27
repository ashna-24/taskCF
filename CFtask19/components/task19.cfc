<cfcomponent>
    <cffunction name="count" access="remote">
        <cfif structKeyExists(Cookie,"cookieCounter") eq false>
            <cfcookie name="cookieCounter" value=1>
        </cfif>
        <cfset Cookie.cookieCounter = Cookie.cookieCounter  + 1>
        <cfreturn Cookie.cookieCounter>
    </cffunction>
</cfcomponent>