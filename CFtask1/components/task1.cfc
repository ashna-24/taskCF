<cfcomponent>
    <cffunction name="getNumbers" access="remote" returnType="any">
        <cfargument name="text" type="any" default="#form.textinput#">
        <cfif arguments.text eq "1">
            <cfset local.res="Ok">
            <cfreturn local.res>
        <cfelseif arguments.text eq "2">
            <cfset local.res="Ok">
            <cfreturn local.res> 
        <cfelseif arguments.text eq "3">
            <cfset local.res="Fair">
            <cfreturn local.res>
        <cfelseif arguments.text eq "4">
            <cfset local.res="Good">
            <cfreturn local.res>
        <cfelseif arguments.text eq "5">
            <cfset local.res="Very Good">
            <cfreturn local.res>
        <cfelse>
            <cfset local.res="Invalid">
            <cfreturn local.res>
        </cfif>
    </cffunction>
</cfcomponent>