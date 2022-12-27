<cfcomponent>
    <cffunction name="getStruct" access="remote" returnType="struct">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfif structKeyExists(session, "myStruct")>
            <cfset session.myStruct[arguments.keyText]=arguments.valueText>
            <cfset structAppend(session.myStruct, session.myStruct)>
        <cfelse>
            <cfset session.myStruct=StructNew()>
            <cfset session.myStruct[arguments.keyText]=arguments.valueText>
        </cfif>
        <cfreturn session.myStruct> 
    </cffunction>
</cfcomponent>