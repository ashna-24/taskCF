<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfif structKeyExists(form, "submit")>
            <cfif structKeyExists(session, "myStruct")>
                <cfset session.myStruct[arguments.keyText]=arguments.valueText>
                <cfset structAppend(session.myStruct, session.myStruct)>
            <cfelse>
                <cfset session.myStruct=StructNew()>
                <cfset session.myStruct[arguments.keyText]=arguments.valueText>
            </cfif>
        </cfif>
        <cfreturn session.myStruct> 
    </cffunction>
</cfcomponent>