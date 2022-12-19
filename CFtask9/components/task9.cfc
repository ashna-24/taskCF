<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfset session.myStruct=StructNew()>                   
        <cfapplication name="GetStruct" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>   
        <cflock  timeout="45" scope="Session" type="Readonly">
            <cfset v=arguments.keyText>
            <cfif structKeyExists(session.myStruct,"#v#")>
                <cfreturn "#v#">
            <cfelse>
                <cfset session.myStruct[arguments.keyText]=arguments.valueText>
                <cfdump var="#session.myStruct#"> 
            </cfif>
        </cflock>               
    </cffunction>
</cfcomponent>