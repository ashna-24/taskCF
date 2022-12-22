<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfset v=arguments.keyText>
        <cfif structKeyExists(form, "submit")>
            <cfif structKeyExists(session, "myStruct")>
                <cfif structKeyExists(session.myStruct,"#v#")>
                    <cfset session.myStruct="#v#" > 
                    <cfreturn session.myStruct>
                <cfelse>
                    <cfset session.myStruct[arguments.keyText]=arguments.valueText>
                    <cfset structAppend(session.myStruct, session.myStruct)>
                </cfif> 
            <cfelse>
                <cfset session.myStruct=StructNew()>                   
                <cfset session.myStruct[arguments.keyText]=arguments.valueText>
            </cfif>
            <cfdump var="#session.myStruct#">
        </cfif>               
    </cffunction>
</cfcomponent>