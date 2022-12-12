<cfcomponent>
    <cffunction name="count" access="remote">
        <cfif isDefined('submit')>
 	        <cfif isDefined("Cookie.cookieCounter") eq false>
                <cfcookie name="cookieCounter" value=1>
            </cfif>
            <cfset Cookie.cookieCounter = Cookie.cookieCounter  + 1>
            <cfreturn "#Cookie.cookieCounter#">
        </cfif>
    </cffunction>
</cfcomponent>