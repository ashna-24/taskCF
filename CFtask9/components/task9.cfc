<cfcomponent>
    <cffunction name="getStruct" access="remote" returnType="struct">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfset local.v=arguments.keyText>
        <cfset local.taskStruct=structNew()>
        <cfif structKeyExists(session, "myStruct")>
            <cfif structKeyExists(session.myStruct,"local.v")>
                <cfset session.count=1> 
                <cfset session.val=local.v>
            <cfelse>
                <cfset local.taskStruct=0>
                <cfset session.myStruct[arguments.keyText]=arguments.valueText>
                <cfset structAppend(session.myStruct, session.myStruct)>
            </cfif> 
        <cfelse>
            <cfset session.myStruct=StructNew()>                   
            <cfset session.myStruct[arguments.keyText]=arguments.valueText>
        </cfif>
        <cfreturn local.taskStruct>               
    </cffunction>
</cfcomponent>