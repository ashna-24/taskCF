<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfset session.myStruct=StructNew()>
        <cfset session.myStruct[arguments.keyText]=arguments.valueText>
        <cfdump var="#session.myStruct#"> 
    </cffunction>
</cfcomponent>